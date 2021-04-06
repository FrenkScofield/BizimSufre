using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using mediabalans_sufre.Models.BLL;
using mediabalans_sufre.Models.DAL;
using Microsoft.AspNetCore.Authorization;

namespace mediabalans_sufre.Areas.WebCms.Controllers
{
    [Area("WebCms")]
    [Route("WebCms/[controller]/[action]")]
    //[Authorize(Roles = "Admin,Manger,Editor")]
    public class WebConfigsController : Controller
    {
        private readonly MyContext _context;

        public WebConfigsController(MyContext context)
        {
            _context = context;
        }
        public async Task<IActionResult> Index()
        {
            var rows = await _context.WebConfigs.FirstOrDefaultAsync();
            if (rows == null)
            {
                return View();
            }
            return View(rows);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Index(WebConfig webConfig)
        {
            if (webConfig.Id == 0)
            {
                _context.Add(webConfig);
            }
            else
            {
                _context.Update(webConfig);
            }
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

    }
}
