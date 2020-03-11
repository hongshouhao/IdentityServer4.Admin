using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace Skoruba.IdentityServer4.Admin.Api.Dtos.Registers
{
    public class ClientRegistryDto
    {
        [Required]
        public string ClientId { get; set; }
        [Required]
        public string ClientName { get; set; }
        public string ClientSecret { get; set; }
        public string Description { get; set; }
        public bool AllowOfflineAccess { get; set; }
        public List<string> AllowedCorsOrigins { get; set; }
        public List<string> AllowedGrantTypes { get; set; }
        public List<string> AllowedScopes { get; set; } = new List<string>();
    }
}
