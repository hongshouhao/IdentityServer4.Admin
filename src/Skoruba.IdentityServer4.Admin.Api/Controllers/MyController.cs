using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Skoruba.IdentityServer4.Admin.Api.Configuration.Constants;
using Skoruba.IdentityServer4.Admin.Api.Dtos.Registries;
using Skoruba.IdentityServer4.Admin.Api.ExceptionHandling;
using Skoruba.IdentityServer4.Admin.BusinessLogic.Dtos.Configuration;
using Skoruba.IdentityServer4.Admin.BusinessLogic.Services.Interfaces;
using Skoruba.IdentityServer4.Admin.BusinessLogic.Shared.ExceptionHandling;
using System;
using System.Linq;
using System.Text.RegularExpressions;
using System.Threading.Tasks;

namespace Skoruba.IdentityServer4.Admin.Api.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    [Produces("application/json", "application/problem+json")]
    [TypeFilter(typeof(ControllerExceptionFilterAttribute))]
    [Authorize(Policy = AuthorizationConsts.AdministrationPolicy)]
    public class MyController : ControllerBase
    {
        private readonly IApiResourceService _apiResourceService;
        private readonly IClientService _clientService;

        public MyController(
            IApiResourceService apiResourceService,
            IClientService clientService)
        {
            _apiResourceService = apiResourceService;
            _clientService = clientService;
        }

        [HttpPost]
        [Route("[action]")]
        public async Task<IActionResult> SaveApiResource([FromBody]ApiResourceRegistryDto api)
        {
            ApiResourcesDto targ = await _apiResourceService.GetApiResourcesAsync(api.Name, 1, 1);
            ApiResourceDto apiDto = ToApiResourceDto(api);
            int apiId;
            if (targ.ApiResources.Count == 0)
            {
                apiId = await _apiResourceService.AddApiResourceAsync(apiDto);
            }
            else
            {
                apiId = targ.ApiResources[0].Id;
                apiDto.Id = apiId;
                await _apiResourceService.UpdateApiResourceAsync(apiDto);
            }

            ApiScopesDto scopesInDb = await _apiResourceService.GetApiScopesAsync(apiId, 1, int.MaxValue);
            foreach (var sitem in api.Scopes)
            {
                if (scopesInDb.Scopes.Any(x => x.Name == sitem.Name))
                {
                    continue;
                }

                await _apiResourceService.AddApiScopeAsync(new ApiScopesDto()
                {
                    ApiResourceId = apiId,
                    Description = sitem.Description,
                    DisplayName = sitem.DisplayName,
                    Emphasize = sitem.Emphasize,
                    Name = sitem.Name,
                    Required = sitem.Required,
                    ShowInDiscoveryDocument = sitem.ShowInDiscoveryDocument,
                    UserClaims = sitem.UserClaims,
                });
            }

            foreach (var sitem in scopesInDb.Scopes)
            {
                if (api.Scopes.Any(x => x.Name == sitem.Name))
                {
                    continue;
                }

                var apiScope = new ApiScopesDto { ApiResourceId = apiId, ApiScopeId = sitem.Id };
                await _apiResourceService.DeleteApiScopeAsync(apiScope);
            }

            ApiResourcePropertiesDto propertiesDto = await _apiResourceService.GetApiResourcePropertiesAsync(apiId, 1, int.MaxValue);
            ApiResourcePropertiesDto[] todele = propertiesDto.ApiResourceProperties.Where(x => api.Properties.ContainsKey(x.Key))
                .Select(x => new ApiResourcePropertiesDto()
                {
                    ApiResourceId = apiId,
                    ApiResourcePropertyId = x.Id,
                    Key = x.Key,
                    Value = x.Value
                }).ToArray();

            foreach (var prop in todele)
            {
                await _apiResourceService.DeleteApiResourcePropertyAsync(prop);
            }

            foreach (var item in api.Properties)
            {
                await _apiResourceService.AddApiResourcePropertyAsync(new ApiResourcePropertiesDto
                {
                    ApiResourceId = apiId,
                    Key = item.Key,
                    Value = item.Value
                });
            }

            return Ok();
        }

        [HttpGet]
        [Route("[action]")]
        public async Task<ApiResourceRegistryDto> GetApiResource([FromQuery]string apiName)
        {
            ApiResourcesDto targ = await _apiResourceService.GetApiResourcesAsync(apiName, 1, 1);
            if (targ.ApiResources.Count == 0)
            {
                throw new UserFriendlyErrorPageException($"API[{apiName}]不存在");
            }

            ApiResourceDto api = targ.ApiResources[0];
            ApiResourceRegistryDto result = new ApiResourceRegistryDto();
            result.Description = api.Description;
            result.DisplayName = api.DisplayName;
            result.Enabled = api.Enabled;
            result.Name = api.Name;
            result.UserClaims = api.UserClaims;

            var scopes = await _apiResourceService.GetApiScopesAsync(api.Id, 1, int.MaxValue);
            result.Scopes = scopes.Scopes.Select(x => new ApiScope
            {
                Description = x.Description,
                DisplayName = x.DisplayName,
                Emphasize = x.Emphasize,
                Name = x.Name,
                Required = x.Required,
                ShowInDiscoveryDocument = x.ShowInDiscoveryDocument,
                UserClaims = x.UserClaims
            }).ToList();

            var props = await _apiResourceService.GetApiResourcePropertiesAsync(api.Id, 1, int.MaxValue);
            result.Properties = props.ApiResourceProperties.ToDictionary(x => x.Key, x => x.Value);

            return result;
        }

        [HttpPost]
        [Route("[action]")]
        public async Task<string> SaveClient([FromBody]ClientRegistryDto client)
        {
            ClientsDto clients = await _clientService.GetClientsAsync(client.ClientName, 1, 1);
            if (clients.Clients.Count > 0)
            {
                throw new UserFriendlyErrorPageException($"客户端[{client.ClientId}]已经存在");
            }
            else
            {
                string clientSecret = Guid.NewGuid().ToString("N").ToLower();
                ClientDto clientDto = ToClientDto(client);
                int clientId = await _clientService.AddClientAsync(clientDto);
                await _clientService.AddClientSecretAsync(new ClientSecretsDto()
                {
                    Value = clientSecret,
                    Description = clientSecret,
                    ClientId = clientId
                });
                client.ClientSecret = clientSecret;

                foreach (var item in client.Properties)
                {
                    await _clientService.AddClientPropertyAsync(new ClientPropertiesDto()
                    {
                        Key = item.Key,
                        Value = item.Value,
                        ClientId = clientId,
                        ClientName = client.ClientName
                    });
                }

                return clientSecret;
            }
        }

        ClientDto ToClientDto(ClientRegistryDto registryClient)
        {
            ClientDto clientApiDto = new ClientDto();
            clientApiDto.ClientId = registryClient.ClientId;
            clientApiDto.ClientName = registryClient.ClientName;
            clientApiDto.Description = registryClient.Description;
            clientApiDto.AllowOfflineAccess = registryClient.AllowOfflineAccess;
            clientApiDto.ClientUri = registryClient.ClientUri;
            clientApiDto.AllowAccessTokensViaBrowser = registryClient.AllowAccessTokensViaBrowser;

            if (!string.IsNullOrWhiteSpace(registryClient.BaseURL))
            {
                registryClient.BaseURL = registryClient.BaseURL.TrimEnd('/') + "/";
                Regex r = new Regex(@"^(?<proto>\w+)://(?<host>[^/]+?)(?<port>:\d+)?/", RegexOptions.IgnoreCase);
                Match m = r.Match(registryClient.BaseURL);
                if (m.Success)
                {
                    clientApiDto.AllowedCorsOrigins.Add(m.Result("${proto}://${host}${port}/"));
                }
            }

            clientApiDto.RequireConsent = false;
            clientApiDto.RedirectUris.AddRange(registryClient.RedirectUris);
            clientApiDto.RequireClientSecret = registryClient.RequireClientSecret;
            clientApiDto.AllowedGrantTypes.AddRange(registryClient.AllowedGrantTypes);
            clientApiDto.AllowedScopes.AddRange(registryClient.AllowedScopes);
            return clientApiDto;
        }

        ApiResourceDto ToApiResourceDto(ApiResourceRegistryDto api)
        {
            ApiResourceDto dto = new ApiResourceDto();
            dto.Description = api.Description;
            dto.DisplayName = api.DisplayName;
            dto.Enabled = api.Enabled;
            dto.Name = api.Name;
            dto.UserClaims = api.UserClaims;

            return dto;
        }
    }
}
