using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using Skoruba.IdentityServer4.Admin.BusinessLogic.Services;
using Skoruba.IdentityServer4.Admin.Configuration;
using System.Threading.Tasks;

namespace Skoruba.IdentityServer4.Admin.Controllers
{
    [Authorize(Policy = Administration.Policy)]
    public class LogController : BaseController
    {
        private readonly ILogService _logService;

        public LogController(ILogService logService,
            ILogger<ConfigurationController> logger) : base(logger)
        {
            _logService = logService;
        }

        [HttpGet]
        public async Task<IActionResult> ErrorsLog(int? page, string search)
        {
            ViewBag.Search = search;
            var logs = await _logService.GetLogsAsync(search, page ?? 1);

            return View(logs);
        }
    }
}