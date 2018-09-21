using IdentityModel;
using System.Security.Claims;

namespace Skoruba.IdentityServer4.Admin.Configuration
{
    public class AdminUser
    {
        public const string UserName = "admin";
        public const string Password = "Pa$$word123";
        public const string Email = "admin@example.com";

        public static Claim[] GetClaims()
        {
            return new Claim[] {
                new Claim(JwtClaimTypes.Name, UserName),
                new Claim(JwtClaimTypes.Role, Administration.AdministratorRole),
                new Claim(JwtClaimTypes.Subject, "1")
            };
        }
    }
}
