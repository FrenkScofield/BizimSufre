using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using mediabalans_sufre.Models.DAL;
using mediabalans_sufre.Models.VM;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace mediabalans_sufre.Controllers
{
    public class RecipesController : Controller
    {
        private readonly MyContext _context;
        public RecipesController(MyContext context)
        {
            _context = context;
        }
        [Route("reseptler/")]
        public async Task<IActionResult> Index()
        {
            var list = new RecipeVM()
            {
                Recipes = await _context.Recipes.OrderBy(x => x.OrderBy).ToListAsync(),
                RecipeCategories = await _context.RecipeCategories.OrderBy(x => x.OrderBy).ToListAsync()
            };
            return View(list);
        }
        [Route("reseptler/{url}")]
        public async Task<IActionResult> Detail(string url)
        {
            if (url == "")
            {
                return NotFound();
            }
            var rows = new RecipeVM()
            {
                Recipe = await _context.Recipes.FirstOrDefaultAsync(x => x.RecipeTranslates.FirstOrDefault().SeoUrl == url),
                Recipes = await _context.Recipes.OrderBy(x => x.OrderBy).ToListAsync(),
            };
            if (rows == null)
            {
                return NotFound();
            }
            return View(rows);
        }
    }
}