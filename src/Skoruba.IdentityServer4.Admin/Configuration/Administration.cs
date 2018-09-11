namespace Skoruba.IdentityServer4.Admin.Configuration
{
    public class Administration
    {
        public const string Policy = "RequireAdministratorRole";
        public const string AdministratorRole = "identity_administrator";
        public const string OidcAuthenticationScheme = "oidc";
        public static string[] AllowedScopes = new string[] { "openid", "profile", "email", "roles" };
    }
}
