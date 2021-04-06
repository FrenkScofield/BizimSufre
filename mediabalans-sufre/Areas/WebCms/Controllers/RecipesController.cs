using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using mediabalans_sufre.Models.BLL;
using mediabalans_sufre.Models.DAL;
using Microsoft.AspNetCore.Http;
using mediabalans_sufre.Models.BLL.Translate;
using mediabalans_sufre.Extensions;
using Microsoft.AspNetCore.Authorization;

namespace mediabalans_sufre.Areas.WebCms.Controllers
{
    [Area("WebCms")]
    [Route("WebCms/[controller]/[action]")]
    ////[Authorize(Roles = "Admin,Manger,Editor")]
    public class RecipesController : Controller
    {
        private readonly MyContext _context;

        public RecipesController(MyContext context)
        {
            _context = context;
        }

        // GET: WebCms/Recipes
        public async Task<IActionResult> Index()
        {
            var myContext = _context.Recipes.Include(r => r.RecipeCategory);
            return View(await myContext.OrderBy(x=>x.OrderBy).ToListAsync());
        }

        public IActionResult Create()
        {
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create(List<IFormFile> files, Recipe recipe,List<RecipeTranslate> translates,List<SeoTranslate> seos)
        {
            if (ModelState.IsValid)
            {
                var code = Generatorcode.Code();
                recipe.UniqueSeo = code;
                var sonuc = _context.Add(recipe);
                await _context.SaveChangesAsync();
                if (files != null)
                {
                    foreach (var item in files)
                    {
                        _context.RecipeFiles.Add(new RecipeFile()
                        {
                            RecipeId = sonuc.Entity.Id,
                            FileUrl = await ImagesHelpers.UploadAsync(item, "files/recipe/")
                        });
                    }
                    await _context.SaveChangesAsync();
                }
                foreach (var item in translates)
                {
                    item.RecipeId = sonuc.Entity.Id;
                    item.SeoUrl = UrlSeoHelpers.UrlSeo(item.Title);
                    _context.RecipeTranslates.Add(item);
                }
                await _context.SaveChangesAsync();

                #region SeoAdd
                var seo = _context.Seos.Add(new Seo()
                {
                    UniqueSeo = code
                });
                await _context.SaveChangesAsync();
                foreach (var item in seos)
                {
                    item.SeoId = seo.Entity.Id;
                    _context.SeoTranslates.Add(item);
                }
                await _context.SaveChangesAsync();
                #endregion

                return RedirectToAction(nameof(Index));
            }
            return View(recipe);
        }

        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var recipe = await _context.Recipes.FindAsync(id);
            if (recipe == null)
            {
                return NotFound();
            }
            return View(recipe);
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, List<IFormFile> files, Recipe recipe, List<RecipeTranslate> translates, List<SeoTranslate> seos)
        {
            if (id != recipe.Id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(recipe);
                    foreach (var item in translates)
                    {
                        item.SeoUrl = UrlSeoHelpers.UrlSeo(item.Title);
                        _context.RecipeTranslates.Update(item);
                    }
                    foreach (var item in seos)
                    {
                        _context.SeoTranslates.Update(item);
                    }
                    await _context.SaveChangesAsync();
                   
                    if (files.Count() > 0)
                    {
                        foreach (var item in _context.RecipeFiles.Where(x => x.RecipeId == recipe.Id))
                        {
                            if (item.FileUrl != null && item.FileUrl != string.Empty)
                            {
                                ImagesHelpers.DeleteImage(item.FileUrl, "files/recipe/");
                            }
                            _context.RecipeFiles.Remove(item);
                        }
                        foreach (var item in files)
                        {
                            _context.RecipeFiles.Add(new RecipeFile()
                            {
                                RecipeId = recipe.Id,
                                FileUrl = await ImagesHelpers.UploadAsync(item, "files/recipe/")
                            });
                        }
                        await _context.SaveChangesAsync();
                    }
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!RecipeExists(recipe.Id))
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
            return View(recipe);
        }
        public async Task<IActionResult> Delete(int id)
        {
            var recipe = await _context.Recipes.FindAsync(id);
            _context.Recipes.Remove(recipe);
            var seo = await _context.Seos.FirstOrDefaultAsync(x => x.UniqueSeo == recipe.UniqueSeo);
            _context.Seos.Remove(seo);
            foreach (var item in recipe.RecipeFiles)
            {
                if (item.FileUrl != null && item.FileUrl != string.Empty)
                {
                    ImagesHelpers.DeleteImage(item.FileUrl, "files/recipe/");
                }
            }
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool RecipeExists(int id)
        {
            return _context.Recipes.Any(e => e.Id == id);
        }
    }
}
