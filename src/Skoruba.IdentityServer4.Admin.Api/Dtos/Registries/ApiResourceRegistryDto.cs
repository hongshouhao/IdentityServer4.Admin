using Skoruba.IdentityServer4.Admin.BusinessLogic.Shared.ExceptionHandling;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Skoruba.IdentityServer4.Admin.Api.Dtos.Registries
{
    public class ApiResourceRegistryDto
    {
        public string Name { get; set; }
        public string DisplayName { get; set; }
        public string Description { get; set; }
        public bool Enabled { get; set; } = true;

        public List<string> UserClaims { get; set; } = new List<string>();
        public List<ApiScope> Scopes { get; set; } = new List<ApiScope>();
        public Dictionary<string, string> Properties { get; set; } = new Dictionary<string, string>();

        public void Check()
        {
            if (string.IsNullOrWhiteSpace(Name))
                throw new UserFriendlyErrorPageException($"{nameof(Name)}不能为空");
            if (string.IsNullOrWhiteSpace(DisplayName))
                throw new UserFriendlyErrorPageException($"{nameof(DisplayName)}不能为空");

            foreach (var item in Scopes)
            {
                if (string.IsNullOrWhiteSpace(item.Name))
                    throw new UserFriendlyErrorPageException($"{nameof(ApiScope.Name)}不能为空");
                if (string.IsNullOrWhiteSpace(item.DisplayName))
                    throw new UserFriendlyErrorPageException($"{nameof(ApiScope.DisplayName)}不能为空");
            }
        }
    }

    public class ApiScope
    {
        public ApiScope()
        {
            UserClaims = new List<string>();
        }

        public bool ShowInDiscoveryDocument { get; set; } = true;
        public string Name { get; set; }
        public string DisplayName { get; set; }
        public string Description { get; set; }
        public bool Required { get; set; }
        public bool Emphasize { get; set; }
        public List<string> UserClaims { get; set; }
    }
}
