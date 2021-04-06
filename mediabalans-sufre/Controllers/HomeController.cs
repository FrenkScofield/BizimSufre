using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using mediabalans_sufre.Models;
using mediabalans_sufre.Models.DAL;
using mediabalans_sufre.Models.VM;
using Microsoft.EntityFrameworkCore;

namespace mediabalans_sufre.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private readonly MyContext _context;
        public HomeController(ILogger<HomeController> logger,MyContext context)
        {
            _logger = logger;
            _context = context;
        }

        public async  Task<IActionResult> Index()
        {
            var view = new HomeVM()
            {
                Sliders = await _context.Sliders.OrderBy(x => x.OrderBy).ToListAsync(),
                Recipes = await _context.Recipes.Where(x => x.Approve == true).Skip(0).Take(3).OrderBy(x => x.OrderBy).ToListAsync(),
                Categories = await _context.Categories.OrderBy(x => x.OrderBy).ToListAsync(),
                Products = await _context.Products.Where(x => x.Approve == true).OrderBy(x => x.OrderBy).ToListAsync(),
            };
            return View(view);
        }

        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
