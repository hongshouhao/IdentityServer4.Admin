using IdentityServer4.Models;
using Microsoft.AspNetCore.Mvc;
using Skoruba.IdentityServer4.Admin.Api.Dtos.Clients;
using Skoruba.IdentityServer4.Admin.Api.ExceptionHandling;
using Skoruba.IdentityServer4.Admin.BusinessLogic.Dtos.Configuration;
using Skoruba.IdentityServer4.Admin.BusinessLogic.Services.Interfaces;
using System;
using System.Threading.Tasks;

namespace Skoruba.IdentityServer4.Admin.Api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    [TypeFilter(typeof(ControllerExceptionFilterAttribute))]
    [Produces("application/json")]
    public class PublicController : ControllerBase
    {
        private readonly IClientService _clientService;

        public PublicController(IClientService clientService)
        {
            _clientService = clientService;
        }

        [HttpPost]
        public async Task<IActionResult> Client([FromBody]ClientRegistryDto client)
        {
            string clientSecret = Guid.NewGuid().ToString("N").ToLower();
            ClientDto clientDto = ToClientDto(client);
            int clientId = await _clientService.AddClientAsync(clientDto);
            await _clientService.AddClientSecretAsync(new ClientSecretsDto()
            {
                Value = clientSecret,
                ClientId = clientId
            });
            client.ClientSecret = clientSecret;
            return Ok(client);
        }

        ClientDto ToClientDto(ClientRegistryDto registryClient)
        {
            ClientDto clientApiDto = new ClientDto();
            clientApiDto.ClientId = registryClient.ClientId;
            clientApiDto.ClientName = registryClient.ClientName;
            clientApiDto.Description = registryClient.Description;
            clientApiDto.AllowAccessTokensViaBrowser = registryClient.AllowOfflineAccess;
            if (!string.IsNullOrWhiteSpace(registryClient.AllowedCorsOrigin))
            {
                clientApiDto.AllowedCorsOrigins.Add(registryClient.AllowedCorsOrigin);
            }
            clientApiDto.AllowedGrantTypes.AddRange(GrantTypes.ClientCredentials);
            clientApiDto.AllowedScopes.AddRange(registryClient.AllowedScopes);

            return clientApiDto;
        }
    }
}
