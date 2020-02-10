using IdentityServer4.Services;
using IdentityServer4.Stores;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Mvc.Razor;
using Microsoft.AspNetCore.Mvc.Razor.RuntimeCompilation;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.FileProviders;
using Microsoft.Extensions.Logging;
using Microsoft.Extensions.Primitives;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading.Tasks;

namespace Skoruba.IdentityServer4.STS.Identity
{
    public static class CustomViewLocationExpanderExtension
    {
        public static IServiceCollection AddCustomViewLocationExpander(this IServiceCollection services,
            IHostingEnvironment env, ILogger logger)
        {
            services.Configure<MvcRazorRuntimeCompilationOptions>(options =>
            {
                options.FileProviders.Add(new PhysicalFileProvider(Path.Combine(env.ContentRootPath)));
            });

            services.Configure<RazorViewEngineOptions>(opts =>
            {
                opts.ViewLocationExpanders.Add(new CustomViewLocationExpander(env, logger));
                //opts.FileProviders.Add(new PhysicalFileProvider(Path.Combine(env.ContentRootPath)));
            });
            return services;
        }
    }

    public class CustomViewLocationExpander : IViewLocationExpander
    {
        readonly IHostingEnvironment _env;
        readonly ILogger _logger;
        public CustomViewLocationExpander(IHostingEnvironment env, ILogger logger)
        {
            _env = env;
            _logger = logger;
        }

        public IEnumerable<string> ExpandViewLocations(ViewLocationExpanderContext context, IEnumerable<string> viewLocations)
        {
            try
            {
                if (string.Equals(context.ControllerName, "account", StringComparison.OrdinalIgnoreCase)
                    && string.Equals(context.ViewName, "login", StringComparison.OrdinalIgnoreCase))
                {
                    string returnUrl = context.ActionContext.HttpContext.Request.Query
                        .FirstOrDefault(s => s.Key.ToLower() == "returnurl").Value;
                    _logger.LogDebug($"Find custom login page:\r\n[returnUrl]:{returnUrl}");

                    if (!string.IsNullOrWhiteSpace(returnUrl))
                    {
                        IIdentityServerInteractionService interaction =
                            context.ActionContext.HttpContext.RequestServices.GetRequiredService<IIdentityServerInteractionService>();
                        IClientStore clientStore = context.ActionContext.HttpContext.RequestServices.GetRequiredService<IClientStore>();
                        var authContext = interaction.GetAuthorizationContextAsync(returnUrl).Result;

                        _logger.LogDebug($"Find custom login page:\r\n[ClientId]:{authContext?.ClientId}");
                        if (authContext?.ClientId != null)
                        {
                            var client = clientStore.FindEnabledClientByIdAsync(authContext.ClientId).Result;
                            if (client != null)
                            {
                                string loginPage = client.Properties.FirstOrDefault(s => s.Key.ToLower() == "login").Value;
                                _logger.LogDebug($"Find custom login page:\r\n[loginPage]:{loginPage}");
                                if (!string.IsNullOrWhiteSpace(loginPage))
                                {
                                    string view = Path.Combine(_env.ContentRootPath, $"Views\\login\\{loginPage}.cshtml");
                                    _logger.LogDebug($"Find custom login page:\r\n[view]:{view}");
                                    if (File.Exists(view))
                                    {
                                        return viewLocations.Select(s =>
                                            s.Replace("/Views/{1}/{0}", $"/Views/Login/{loginPage}", StringComparison.OrdinalIgnoreCase));
                                        //return new string[] { $"/Views/Login/{loginPage}.cshtml" };
                                    }
                                    else
                                    {
                                        _logger.LogDebug($"Find custom login page:\r\ncan not found view:{view}");
                                        return viewLocations;
                                    }
                                }
                                else
                                {
                                    return viewLocations;
                                }
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                _logger.LogError(ex.Message);
            }
            return viewLocations;
        }

        public void PopulateValues(ViewLocationExpanderContext context)
        {
        }
    }
}
