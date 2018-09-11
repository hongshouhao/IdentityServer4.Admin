using System.Collections.Generic;
using IdentityModel;
using IdentityServer4.Models;

namespace Skoruba.IdentityServer4.Admin.Configuration
{
    public class Resources
    {
        public static IEnumerable<IdentityResource> GetIdentityResources()
        {
            return new[]
            {
                new IdentityResources.OpenId(),
                new IdentityResources.Profile(),
                new IdentityResources.Email(),
                new IdentityResource("custom.profile", new[] { JwtClaimTypes.Name, JwtClaimTypes.Email, "location" }),
                new IdentityResource("roles", "Roles", new[] { "role" })
            };
        }

        public static IEnumerable<ApiResource> GetApiResources()
        {
            return new ApiResource[] { };
        }
    }
}