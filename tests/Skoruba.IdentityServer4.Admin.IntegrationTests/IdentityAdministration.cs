using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Skoruba.IdentityServer4.Admin.Configuration
{
    public class IdentityAdmin
    {
        public const string Policy = "RequireAdministratorRole";

        public const string LoginPage = "Account/Login";
        public const string OidcAuthenticationScheme = "oidc";
        public const string AdminCookieName = "IdentityAdmin";
        public static string[] AllowedScopes = new string[] { "openid", "profile", "email", "roles" };
    }
}
