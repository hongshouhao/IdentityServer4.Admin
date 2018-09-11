using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Logging;
using Skoruba.IdentityServer4.Admin.Configuration;
using Skoruba.IdentityServer4.Admin.Helpers;
using System.IdentityModel.Tokens.Jwt;

namespace Skoruba.IdentityServer4.Admin
{
    public class Startup
    {
        public Startup(IConfiguration config, IHostingEnvironment env)
        {
            Configuration = config;
            Environment = env;

            JwtSecurityTokenHandler.DefaultInboundClaimTypeMap.Clear();
            AdminClient.ReadConfig(Configuration);
            IdentityServer.ReadConfig(Configuration);
        }

        public IConfiguration Configuration { get; }

        public IHostingEnvironment Environment { get; }

        public void ConfigureServices(IServiceCollection services)
        {
            services.AddDbContexts(Configuration);
            services.AddAuth();
            services.AddServices();
            services.AddMvcLocalization();
            services.AddAuthorizationPolicies();
        }

        public void Configure(IApplicationBuilder app, ILoggerFactory loggerFactory)
        {
            app.AddLogging(loggerFactory, Configuration);
            if (Environment.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
                app.UseBrowserLink();
            }
            else
            {
                app.UseExceptionHandler("/Home/Error");
            }

            app.UseSecurityHeaders();
            app.UseStaticFiles();
            app.ConfigureAuthentification(Environment);
            app.ConfigureLocalization();

            app.UseMvc(routes =>
            {
                routes.MapRoute("default", "{controller=Home}/{action=Index}/{id?}");
            });
        }
    }
}