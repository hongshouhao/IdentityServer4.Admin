using Microsoft.Extensions.Configuration;

namespace Skoruba.IdentityServer4.Admin.Configuration
{
    public class IdentityServer
    {
        public static string BaseUrl { get; private set; }

        public static void ReadConfig(IConfiguration configuration)
        {
            BaseUrl = configuration.GetValue<string>(ConfigConsts.IdentityServerBaseUrl);
        }
    }
}
