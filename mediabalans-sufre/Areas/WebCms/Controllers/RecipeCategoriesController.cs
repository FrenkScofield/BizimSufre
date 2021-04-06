using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using mediabalans_sufre.Models.BLL;
using mediabalans_sufre.Models.DAL;
using mediabalans_sufre.Models.BLL.Translate;
using Microsoft.AspNetCore.Authorization;

namespace mediabalans_sufre.Areas.WebCms.Controllers
{
    [Area("WebCms")]
    [Route("WebCms/[controller]/[action]")]
    //[Authorize(Roles = "Admin,Manger,Editor")]
    public class RecipeCategoriesController : Controller
    {
        private readonly MyContext _context;

        public RecipeCategoriesController(MyContext context)
        {
            _context = context;
        }

        public async Task<IActionResult> Index()
        {
            return View(await _context.RecipeCategories.OrderBy(x => x.OrderBy).ToListAsync());
        }
        public IActionResult Create()
        {
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create(RecipeCategory recipeCategory, List<RecipeCategoryTranslate> translates)
        {
            if (ModelState.IsValid)
            {
                var sonuc = _context.Add(recipeCategory);
                await _context.SaveChangesAsync();
                foreach (var item in translates)
                {
                    item.RecipeCategoryId = sonuc.Entity.Id;
                    _context.RecipeCategoryTranslates.Add(item);
                }
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            return View(recipeCategory);
        }

        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var recipeCategory = await _context.RecipeCategories.FindAsync(id);
            if (recipeCategory == null)
            {
                return NotFound();
            }
            return View(recipeCategory);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, RecipeCategory recipeCategory, List<RecipeCategoryTranslate> translates)
        {
            if (id != recipeCategory.Id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(recipeCategory);
                    foreach (var item in translates)
                    {
                        _context.RecipeCategoryTranslates.Update(item);
                    }
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!RecipeCategoryExists(recipeCategory.Id))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction(nameof(Index));
            }
            return View(recipeCategory);
        }
        public async Task<IActionResult> Delete(int id)
        {
            var recipeCategory = await _context.RecipeCategories.FindAsync(id);
            _context.RecipeCategories.Remove(recipeCategory);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool RecipeCategoryExists(int id)
        {
            return _context.RecipeCategories.Any(e => e.Id == id);
        }
    }
}
