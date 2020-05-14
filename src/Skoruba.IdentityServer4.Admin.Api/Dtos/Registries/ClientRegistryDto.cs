using Skoruba.IdentityServer4.Admin.BusinessLogic.Shared.ExceptionHandling;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace Skoruba.IdentityServer4.Admin.Api.Dtos.Registries
{
    public class ClientRegistryDto
    {
        [Required]
        public string ClientId { get; set; }
        [Required]
        public string ClientName { get; set; }
        public string ClientSecret { get; set; }
        public string Description { get; set; }
        public string BaseURL { get; set; }
        public string ClientUri { get; set; }
        public List<string> AllowedGrantTypes { get; set; }
        public List<string> RedirectUris { get; set; }
        public bool AllowOfflineAccess { get; set; }
        public bool AllowAccessTokensViaBrowser { get; set; }
        public bool RequireClientSecret { get; set; }
        public List<string> AllowedScopes { get; set; } = new List<string>();
        public Dictionary<string, string> Properties { get; set; } = new Dictionary<string, string>();

        public void Check()
        {
            if (string.IsNullOrWhiteSpace(ClientId))
                throw new UserFriendlyErrorPageException($"{nameof(ClientId)}不能为空");
            if (string.IsNullOrWhiteSpace(ClientName))
                throw new UserFriendlyErrorPageException($"{nameof(ClientName)}不能为空");
            if (AllowedGrantTypes == null || AllowedGrantTypes.Count == 0)
                throw new UserFriendlyErrorPageException($"{nameof(AllowedGrantTypes)}不能为空");
        }
    }
}
