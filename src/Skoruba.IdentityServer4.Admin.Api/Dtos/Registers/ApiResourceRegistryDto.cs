using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Skoruba.IdentityServer4.Admin.Api.Dtos.Registers
{
    public class ApiResourceRegistryDto
    {
        public string Name { get; set; }
        public string DisplayName { get; set; }
        public string Description { get; set; }
        public bool Enabled { get; set; } = true;

        public List<string> UserClaims { get; set; } = new List<string>();
        public List<ApiScope> Scopes { get; set; } = new List<ApiScope>();
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
