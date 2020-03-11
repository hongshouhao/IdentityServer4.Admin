using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Skoruba.IdentityServer4.Admin.Api.Configuration.Constants;
using Skoruba.IdentityServer4.Admin.Api.Dtos.Registers;
using Skoruba.IdentityServer4.Admin.Api.ExceptionHandling;
using Skoruba.IdentityServer4.Admin.Api.Resources;
using Skoruba.IdentityServer4.Admin.BusinessLogic.Dtos.Configuration;
using Skoruba.IdentityServer4.Admin.BusinessLogic.Services.Interfaces;
using System.Linq;
using System.Threading.Tasks;

namespace Skoruba.IdentityServer4.Admin.Api.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    [Produces("application/json")]
    [TypeFilter(typeof(ControllerExceptionFilterAttribute))]
    public class OpenApiController : ControllerBase
    {
        private readonly IApiResourceService _apiResourceService;

        public OpenApiController(IApiResourceService apiResourceService)
        {
            _apiResourceService = apiResourceService;
        }

        [HttpPost]
        [Route("[action]")]
        public async Task<IActionResult> SaveApiResource([FromBody]ApiResourceRegistryDto apiInput)
        {
            ApiResourcesDto targ = await _apiResourceService.GetApiResourcesAsync(apiInput.Name, 1, 1);

            int apiId;
            if (targ.ApiResources.Count == 0)
            {
                ApiResourceDto apiDto = ToApiResourceDto(apiInput);
                apiId = await _apiResourceService.AddApiResourceAsync(apiDto);
            }
            else
            {
                ApiResourceDto apiDto = ToApiResourceDto(apiInput);
                ApiResourceDto apiIndb = await _apiResourceService.GetApiResourceAsync(3);
                apiId = await _apiResourceService.UpdateApiResourceAsync(apiIndb);
            }

            ApiScopesDto scopesInDb = await _apiResourceService.GetApiScopesAsync(apiId, 1, int.MaxValue);
            foreach (var sitem in apiInput.Scopes)
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
                if (apiInput.Scopes.Any(x => x.Name == sitem.Name))
                {
                    continue;
                }

                var apiScope = new ApiScopesDto { ApiResourceId = apiId, ApiScopeId = sitem.Id };
                await _apiResourceService.DeleteApiScopeAsync(apiScope);
            }

            return Ok();
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
