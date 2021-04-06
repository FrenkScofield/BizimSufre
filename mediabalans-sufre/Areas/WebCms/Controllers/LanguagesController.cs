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
    public class LanguagesController : Controller
    {
        private readonly MyContext _context;

        public LanguagesController(MyContext context)
        {
            _context = context;
        }

        public async Task<IActionResult> Index()
        {
            return View(await _context.Languages.OrderBy(x => x.OrderBy).ToListAsync());
        }

        public IActionResult Create()
        {
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create(Language language)
        {
            if (ModelState.IsValid)
            {
                var sonuc = _context.Add(language);
                await _context.SaveChangesAsync();
                foreach (var item in _context.Blogs)
                {
                    _context.BlogTranslates.Add(new BlogTranslate()
                    {
                        BlogId = item.Id,
                        LanguageId = sonuc.Entity.Id
                    });
                }
                foreach (var item in _context.Categories)
                {
                    _context.CategoryTranslates.Add(new CategoryTranslate()
                    {
                        CategoryId = item.Id,
                        LanguageId = sonuc.Entity.Id
                    });
                }
                foreach (var item in _context.Pages)
                {
                    _context.PageTranslates.Add(new PageTranslate()
                    {
                        PageId = item.Id,
                        LanguageId = sonuc.Entity.Id
                    });
                }
                foreach (var item in _context.Products)
                {
                    _context.ProductTranslates.Add(new ProductTranslate()
                    {
                        ProductId = item.Id,
                        LanguageId = sonuc.Entity.Id
                    });
                }
                foreach (var item in _context.RecipeCategories)
                {
                    _context.RecipeCategoryTranslates.Add(new RecipeCategoryTranslate()
                    {
                        RecipeCategoryId = item.Id,
                        LanguageId = sonuc.Entity.Id
                    });
                }
                foreach (var item in _context.Recipes)
                {
                    _context.RecipeTranslates.Add(new RecipeTranslate()
                    {
                        RecipeId = item.Id,
                        LanguageId = sonuc.Entity.Id
                    });
                }
                foreach (var item in _context.Resources)
                {
                    _context.ResourceTranslates.Add(new ResourceTranslate()
                    {
                        ResourceId = item.Id,
                        LanguageId = sonuc.Entity.Id
                    });
                }
                foreach (var item in _context.Seos)
                {
                    _context.SeoTranslates.Add(new SeoTranslate()
                    {
                        SeoId = item.Id,
                        LanguageId = sonuc.Entity.Id
                    });
                }
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            return View(language);
        }
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var language = await _context.Languages.FindAsync(id);
            if (language == null)
            {
                return NotFound();
            }
            return View(language);
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, Language language)
        {
            if (id != language.Id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(language);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!LanguageExists(language.Id))
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
            return View(language);
        }

        public async Task<IActionResult> Delete(int id)
        {
            var language = await _context.Languages.FindAsync(id);
            _context.Languages.Remove(language);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool LanguageExists(int id)
        {
            return _context.Languages.Any(e => e.Id == id);
        }
    }
}
