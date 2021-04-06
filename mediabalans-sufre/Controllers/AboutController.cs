using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using mediabalans_sufre.Models.DAL;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace mediabalans_sufre.Controllers
{
    [Route("haqqimizda")]
    public class AboutController : Controller
    {
        private readonly MyContext _context;
        public AboutController(MyContext context)
        {
            _context = context;
        }
        public async Task<IActionResult> Index()
        {
            return View(await _context.Pages.ToListAsync());
        }
    }
}