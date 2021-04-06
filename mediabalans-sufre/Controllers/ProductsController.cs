using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using mediabalans_sufre.Models.DAL;
using mediabalans_sufre.Models.VM;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace mediabalans_sufre.Controllers
{
    public class ProductsController : Controller
    {
        private readonly MyContext _context;
        public ProductsController(MyContext context)
        {
            _context = context;
        }
        [Route("mehsullar/{url}")]
        public async Task<IActionResult> Index(string url)
        {
            var list = new ProductVM()
            {
                Category = await _context.Categories.FirstOrDefaultAsync(x => x.CategoryTranslates.FirstOrDefault().SeoUrl == url),
                Products = await _context.Products.Where(x => x.Category.CategoryTranslates.FirstOrDefault().SeoUrl == url).OrderBy(x => x.OrderBy).ToListAsync()
            };
            return View(list);
        }
        [Route("mehsullar/{cat}/{url}")]
        public async Task<IActionResult> Detail(string url)
        {
            if (url == "")
            {
                return NotFound();
            }
            var row = new ProductVM()
            {
                Product = await _context.Products.FirstOrDefaultAsync(x => x.ProductTranslates.FirstOrDefault().SeoUrl == url),
                Products = await _context.Products.OrderBy(x => x.OrderBy).ToListAsync()
            };
            if (row == null)
            {
                return NotFound();
            }
            return View(row);
        }
        [HttpPost]
        public PartialViewResult Search(string name, int id)
        {
            string lang = "az-Latn";
            if (HttpContext.Session.GetString("lang") != null)
            {
                lang = HttpContext.Session.GetString("lang");
            }
            var arama = _context.ProductTranslates.Where(x => x.Language.Code == lang && x.Product.CategoryId == id && x.Title.ToLower().Contains(name.ToLower())).ToList();
            return PartialView(arama);
        }
    }
}