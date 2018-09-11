using IdentityServer4.Extensions;
using IdentityServer4.Models;
using IdentityServer4.Services;
using Microsoft.AspNetCore.Identity;
using Skoruba.IdentityServer4.Admin.EntityFramework.Entities.Identity;
using System.Collections.Generic;
using System.Security.Claims;
using System.Threading.Tasks;

namespace Skoruba.IdentityServer4.Quickstart.Account
{
    public class CustomProfileService : IProfileService
    {
        private readonly UserManager<UserIdentity> _userManager;
        public CustomProfileService(UserManager<UserIdentity> userManager)
        {
            _userManager = userManager;
        }

        public async Task GetProfileDataAsync(ProfileDataRequestContext context)
        {
            var name = context.Subject.GetDisplayName();
            if (name != null)
            {
                var user = await _userManager.FindByNameAsync(name);
                var claims = await _userManager.GetClaimsAsync(user);
                context.IssuedClaims = new List<Claim>(claims);
            }
        }

        public Task IsActiveAsync(IsActiveContext context)
        {
            context.IsActive = true;
            return Task.CompletedTask;
        }
    }
}