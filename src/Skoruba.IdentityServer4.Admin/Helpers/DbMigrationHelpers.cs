using IdentityServer4.EntityFramework.Mappers;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.DependencyInjection;
using Skoruba.IdentityServer4.Admin.Configuration;
using Skoruba.IdentityServer4.Admin.EntityFramework.DbContexts;
using Skoruba.IdentityServer4.Admin.EntityFramework.Entities.Identity;
using System;
using System.Linq;
using System.Threading.Tasks;

namespace Skoruba.IdentityServer4.Admin.Helpers
{
    public static class DbMigrationHelpers
    {
        /// <summary>
        /// Generate migrations before running this method, you can use command bellow:
        /// Nuget package manager: Add-Migration DbInit -context AdminDbContext -output Data/Migrations
        /// Dotnet CLI: dotnet ef migrations add DbInit -c AdminDbContext -o Data/Migrations
        /// </summary>
        /// <param name="host"></param>
        public static async Task EnsureSeedData(IWebHost host)
        {
            using (var serviceScope = host.Services.CreateScope())
            {
                var services = serviceScope.ServiceProvider;

                await EnsureSeedData(services);
            }
        }

        public static async Task EnsureSeedData(IServiceProvider serviceProvider)
        {
            using (var scope = serviceProvider.GetRequiredService<IServiceScopeFactory>().CreateScope())
            {
                var context = scope.ServiceProvider.GetRequiredService<AdminDbContext>();
                var userManager = scope.ServiceProvider.GetRequiredService<UserManager<UserIdentity>>();
                var roleManager = scope.ServiceProvider.GetRequiredService<RoleManager<UserIdentityRole>>();

                context.Database.Migrate();
                await EnsureSeedIdentityServerData(context);
                await EnsureSeedIdentityData(userManager, roleManager);
            }
        }

        /// <summary>
        /// Generate default admin user / role
        /// </summary>
        private static async Task EnsureSeedIdentityData(UserManager<UserIdentity> userManager,
            RoleManager<UserIdentityRole> roleManager)
        {
            // Create admin role
            if (!await roleManager.RoleExistsAsync(Administration.AdministratorRole))
            {
                var role = new UserIdentityRole { Name = Administration.AdministratorRole };
                await roleManager.CreateAsync(role);
            }

            // Create admin user
            if (await userManager.FindByNameAsync(AdminUser.UserName) != null) return;

            var user = new UserIdentity
            {
                UserName = AdminUser.UserName,
                Email = AdminUser.Email,
                EmailConfirmed = true,
            };

            var result = await userManager.CreateAsync(user, AdminUser.Password);
            if (result.Succeeded)
            {
                result = await userManager.AddToRoleAsync(user, Administration.AdministratorRole);
                if (result.Succeeded)
                {
                    await userManager.AddClaimsAsync(user, AdminUser.GetClaims());
                }
            }
        }

        /// <summary>
        /// Generate default clients, identity and api resources
        /// </summary>
        private static async Task EnsureSeedIdentityServerData(AdminDbContext context)
        {
            if (!context.Clients.Any())
            {
                await context.Clients.AddAsync(AdminClient.Get().ToEntity());
                await context.SaveChangesAsync();
            }

            if (!context.IdentityResources.Any())
            {
                var identityResources = Resources.GetIdentityResources().ToList();

                foreach (var resource in identityResources)
                {
                    await context.IdentityResources.AddAsync(resource.ToEntity());
                }

                await context.SaveChangesAsync();
            }

            if (!context.ApiResources.Any())
            {
                foreach (var resource in Resources.GetApiResources().ToList())
                {
                    await context.ApiResources.AddAsync(resource.ToEntity());
                }

                await context.SaveChangesAsync();
            }
        }
    }
}
