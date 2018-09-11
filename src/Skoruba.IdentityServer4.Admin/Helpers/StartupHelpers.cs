using IdentityModel;
using IdentityServer4.EntityFramework.Options;
using Microsoft.AspNetCore.Authentication.Cookies;
using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.AspNetCore.Authentication.OpenIdConnect;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.HttpOverrides;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Localization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Razor;
using Microsoft.AspNetCore.Mvc.ViewFeatures;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Logging;
using Microsoft.Extensions.Options;
using Microsoft.IdentityModel.Tokens;
using Serilog;
using Serilog.Events;
using Serilog.Sinks.MSSqlServer;
using Skoruba.IdentityServer4.Admin.BusinessLogic.Repositories;
using Skoruba.IdentityServer4.Admin.BusinessLogic.Resources;
using Skoruba.IdentityServer4.Admin.BusinessLogic.Services;
using Skoruba.IdentityServer4.Admin.Configuration;
using Skoruba.IdentityServer4.Admin.EntityFramework.Constants;
using Skoruba.IdentityServer4.Admin.EntityFramework.DbContexts;
using Skoruba.IdentityServer4.Admin.EntityFramework.Entities.Identity;
using Skoruba.IdentityServer4.Admin.ExceptionHandling;
using System.Collections.Generic;
using System.Globalization;
using System.Reflection;
using System.Threading.Tasks;

namespace Skoruba.IdentityServer4.Admin.Helpers
{
    public static class StartupHelpers
    {
        public static void RegisterDbContexts(this IServiceCollection services, IConfiguration configuration)
        {
            var migrationsAssembly = typeof(Startup).GetTypeInfo().Assembly.GetName().Name;

            services.AddSingleton(new OperationalStoreOptions());
            services.AddSingleton(new ConfigurationStoreOptions());
            services.AddDbContext<AdminDbContext>(
                options => options.UseSqlServer(configuration.GetConnectionString(ConfigConsts.DbConnectionStringKey),
                    optionsSql => optionsSql.MigrationsAssembly(migrationsAssembly)));
        }

        public static void UseSecurityHeaders(this IApplicationBuilder app)
        {
            app.UseForwardedHeaders(new ForwardedHeadersOptions()
            {
                ForwardedHeaders = ForwardedHeaders.XForwardedFor | ForwardedHeaders.XForwardedProto
            });
            app.UseHsts(options => options.MaxAge(days: 365));
            app.UseXXssProtection(options => options.EnabledWithBlockMode());
            app.UseXContentTypeOptions();
            app.UseXfo(options => options.SameOrigin());
            app.UseReferrerPolicy(options => options.NoReferrer());
            var allowCspUrls = new List<string>
            {
                "https://fonts.googleapis.com/",
                "https://fonts.gstatic.com/"
            };

            app.UseCsp(options =>
            {
                options.FontSources(configuration =>
                {
                    configuration.SelfSrc = true;
                    configuration.CustomSources = allowCspUrls;
                });

                //TODO: consider remove unsafe sources - currently using for toastr inline scripts in Notification.cshtml
                options.ScriptSources(configuration =>
                {
                    configuration.SelfSrc = true;
                    configuration.UnsafeInlineSrc = true;
                    configuration.UnsafeEvalSrc = true;
                });

                options.StyleSources(configuration =>
                {
                    configuration.SelfSrc = true;
                    configuration.CustomSources = allowCspUrls;
                    configuration.UnsafeInlineSrc = true;
                });
            });
        }

        public static void ConfigureAuthentification(this IApplicationBuilder app, IHostingEnvironment env)
        {
            app.UseAuthentication();
        }

        public static void ConfigureLocalization(this IApplicationBuilder app)
        {
            var options = app.ApplicationServices.GetService<IOptions<RequestLocalizationOptions>>();
            app.UseRequestLocalization(options.Value);
        }

        public static void AddLogging(this IApplicationBuilder app, ILoggerFactory loggerFactory, IConfiguration configuration)
        {
            loggerFactory.AddConsole(configuration.GetSection(ConfigConsts.LoggingSectionKey));
            loggerFactory.AddDebug();

            var columnOptions = new ColumnOptions();

            // Don't include the Properties XML column.
            columnOptions.Store.Remove(StandardColumn.Properties);

            // Do include the log event data as JSON.
            columnOptions.Store.Add(StandardColumn.LogEvent);

            Log.Logger = new LoggerConfiguration()
                .WriteTo.MSSqlServer(configuration.GetConnectionString(ConfigConsts.DbConnectionStringKey),
                    TableConsts.Logging,
                    columnOptions: columnOptions,
                    restrictedToMinimumLevel: LogEventLevel.Error)
                .CreateLogger();
        }

        public static void AddDbContexts(this IServiceCollection services, IConfiguration configuration)
        {
            services.RegisterDbContexts(configuration);
        }

        public static void AddAuthorizationPolicies(this IServiceCollection services)
        {
            services.AddAuthorization(options =>
            {
                options.AddPolicy(
                    Administration.Policy,
                    policy =>
                    {
                        //policy.AuthenticationSchemes.Add(JwtBearerDefaults.AuthenticationScheme);
                        policy.RequireRole(Administration.AdministratorRole);
                    });
            });
        }

        public static void AddServices(this IServiceCollection services)
        {
            //Repositories
            services.AddTransient<IClientRepository, ClientRepository>();
            services.AddTransient<IIdentityResourceRepository, IdentityResourceRepository>();
            services.AddTransient<IIdentityRepository, IdentityRepository>();
            services.AddTransient<IApiResourceRepository, ApiResourceRepository>();
            services.AddTransient<IPersistedGrantRepository, PersistedGrantRepository>();
            services.AddTransient<ILogRepository, LogRepository>();

            //Services
            services.AddTransient<ILogService, LogService>();
            services.AddTransient<IClientService, ClientService>();
            services.AddTransient<IApiResourceService, ApiResourceService>();
            services.AddTransient<IIdentityResourceService, IdentityResourceService>();
            services.AddTransient<IPersistedGrantService, PersistedGrantService>();
            services.AddTransient<IIdentityService, IdentityService>();

            //Resources
            services.AddScoped<IApiResourceServiceResources, ApiResourceServiceResources>();
            services.AddScoped<IClientServiceResources, ClientServiceResources>();
            services.AddScoped<IIdentityResourceServiceResources, IdentityResourceServiceResources>();
            services.AddScoped<IIdentityServiceResources, IdentityServiceResources>();
            services.AddScoped<IPersistedGrantServiceResources, PersistedGrantServiceResources>();

            //Exception handling
            services.AddScoped<ControllerExceptionFilterAttribute>();
        }

        public static void AddMvcLocalization(this IServiceCollection services)
        {
            services.AddSingleton<ITempDataProvider, CookieTempDataProvider>();

            services.AddLocalization(opts => { opts.ResourcesPath = ConfigConsts.ResourcesPath; });

            services.AddMvc()
                .SetCompatibilityVersion(CompatibilityVersion.Version_2_1)
                .AddViewLocalization(
                    LanguageViewLocationExpanderFormat.Suffix,
                    opts => { opts.ResourcesPath = ConfigConsts.ResourcesPath; })
                .AddDataAnnotationsLocalization();

            services.Configure<RequestLocalizationOptions>(opts =>
            {
                var supportedCultures = new[]
                {
                     new CultureInfo("en-US"),
                     new CultureInfo("en")
                };

                opts.DefaultRequestCulture = new RequestCulture("en");
                opts.SupportedCultures = supportedCultures;
                opts.SupportedUICultures = supportedCultures;
            });
        }

        public static void AddAuth(this IServiceCollection services)
        {
            services.AddIdentity<UserIdentity, UserIdentityRole>()
                .AddEntityFrameworkStores<AdminDbContext>()
                .AddDefaultTokenProviders();

            services.AddAuthentication(options =>
            {
                options.DefaultScheme = CookieAuthenticationDefaults.AuthenticationScheme;
                options.DefaultChallengeScheme = Administration.OidcAuthenticationScheme;

                options.DefaultAuthenticateScheme = CookieAuthenticationDefaults.AuthenticationScheme;
                options.DefaultForbidScheme = CookieAuthenticationDefaults.AuthenticationScheme;
                options.DefaultSignInScheme = CookieAuthenticationDefaults.AuthenticationScheme;
                options.DefaultSignOutScheme = CookieAuthenticationDefaults.AuthenticationScheme;
            })
            .AddCookie(CookieAuthenticationDefaults.AuthenticationScheme, options =>
            {
                options.Cookie.Name = AdminClient.Id;
            })
            .AddOpenIdConnect(Administration.OidcAuthenticationScheme, options =>
            {
                options.Authority = IdentityServer.BaseUrl;
                options.ClientId = AdminClient.Id;
                options.RequireHttpsMetadata = false;
                options.SignInScheme = CookieAuthenticationDefaults.AuthenticationScheme;
                options.SaveTokens = true;

                options.Scope.Clear();
                foreach (var scope in Administration.AllowedScopes)
                {
                    options.Scope.Add(scope);
                }

                options.TokenValidationParameters = new TokenValidationParameters
                {
                    NameClaimType = JwtClaimTypes.Name,
                    RoleClaimType = JwtClaimTypes.Role,
                };

                options.Events = new OpenIdConnectEvents
                {
                    OnRemoteFailure = context =>
                    {
                        context.Response.Redirect("/");
                        context.HandleResponse();
                        return Task.CompletedTask;
                    }
                };
            });
        }
    }
}
