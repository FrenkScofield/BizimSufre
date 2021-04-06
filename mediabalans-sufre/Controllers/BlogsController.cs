using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using mediabalans_sufre.Models.BLL;
using mediabalans_sufre.Models.DAL;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace mediabalans_sufre.Controllers
{
    public class BlogsController : Controller
    {
        private readonly MyContext _context;
        public BlogsController(MyContext context)
        {
            _context = context;
        }
        [Route("kesfet")]
        public async Task<IActionResult> Index()
        {
            return View(await _context.Blogs.OrderBy(x => x.OrderBy).ToListAsync());
        }
        [Route("kesfet/{url}")]
        public async Task<IActionResult> Detail(string url)
        {
            if (url == null)
            {
                return NotFound();
            }
            var row = await _context.Blogs.FirstOrDefaultAsync(x => x.BlogTranslates.FirstOrDefault().SeoUrl == url);
            if (row == null)
            {
                return NotFound();
            }
            return View(row);
        }
    
    }
}