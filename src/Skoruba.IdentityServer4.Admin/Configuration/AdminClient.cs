using IdentityServer4;
using IdentityServer4.Models;
using Microsoft.Extensions.Configuration;

namespace Skoruba.IdentityServer4.Admin.Configuration
{
    public class AdminClient
    {
        public static string BaseUrl { get; private set; }
        public const string Id = "identity_admin";
        public const string Name = "Identity Server AdminUI";

        public static void ReadConfig(IConfiguration configuration)
        {
            BaseUrl = configuration.GetValue<string>(ConfigConsts.IdentityAdminBaseUrl);
        }

        public static Client Get()
        {
            return new Client
            {
                ClientId = Id,
                ClientName = Name,
                ClientUri = BaseUrl,

                AllowedGrantTypes = GrantTypes.Implicit,
                AllowAccessTokensViaBrowser = true,

                RedirectUris = { $"{BaseUrl}/signin-oidc" },
                FrontChannelLogoutUri = $"{BaseUrl}/signout-oidc",
                PostLogoutRedirectUris = { $"{BaseUrl}/signout-callback-oidc" },
                AllowedCorsOrigins = { BaseUrl },

                AllowedScopes =
                {
                    IdentityServerConstants.StandardScopes.OpenId,
                    IdentityServerConstants.StandardScopes.Profile,
                    IdentityServerConstants.StandardScopes.Email,
                    "roles"
                }
            };
        }
    }
}