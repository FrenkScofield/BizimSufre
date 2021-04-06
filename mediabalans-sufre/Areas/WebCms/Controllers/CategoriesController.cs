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
using mediabalans_sufre.Extensions;
using mediabalans_sufre.Models.BLL.Translate;
using Microsoft.AspNetCore.Authorization;

namespace mediabalans_sufre.Areas.WebCms.Controllers
{
    [Area("WebCms")]
    [Route("WebCms/[controller]/[action]")]
    //[Authorize(Roles = "Admin,Manger,Editor")]
    public class CategoriesController : Controller
    {
        private readonly MyContext _context;

        public CategoriesController(MyContext context)
        {
            _context = context;
        }

        public async Task<IActionResult> Index()
        {
            return View(await _context.Categories.OrderBy(x => x.OrderBy).ToListAsync());
        }


        public IActionResult Create()
        {
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create(IFormFile file, Category category,List<CategoryTranslate> translates)
        {
            if (ModelState.IsValid)
            {
                if (file != null)
                {
                    if (ImagesHelpers.ImageIsValid(file))
                    {
                        category.FileUrl = await ImagesHelpers.UploadAsync(file, "files/cat/");
                    }
                }
                var sonuc = _context.Add(category);
                await _context.SaveChangesAsync();
                foreach (var item in translates)
                {
                    item.CategoryId = sonuc.Entity.Id;
                    item.SeoUrl = UrlSeoHelpers.UrlSeo(item.Title);
                    _context.CategoryTranslates.Add(item);
                }
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            return View(category);
        }

        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var category = await _context.Categories.FindAsync(id);
            if (category == null)
            {
                return NotFound();
            }
            return View(category);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, IFormFile file, Category category, List<CategoryTranslate> translates)
        {
            if (id != category.Id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    if (file != null)
                    {
                        if (ImagesHelpers.ImageIsValid(file))
                        {
                            if(category.FileUrl !=null && category.FileUrl != string.Empty)
                            {
                                ImagesHelpers.DeleteImage(category.FileUrl, "files/cat/");
                            }
                            category.FileUrl = await ImagesHelpers.UploadAsync(file, "files/cat/");
                        }
                    }
                    _context.Update(category);
                    foreach (var item in translates)
                    {
                        item.SeoUrl = UrlSeoHelpers.UrlSeo(item.Title);
                        _context.CategoryTranslates.Update(item);
                    }
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!CategoryExists(category.Id))
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
            return View(category);
        }

        public async Task<IActionResult> Delete(int id)
        {
            var category = await _context.Categories.FindAsync(id);
            if (category.FileUrl != null && category.FileUrl != string.Empty)
            {
                ImagesHelpers.DeleteImage(category.FileUrl, "files/cat/");
            }
            _context.Categories.Remove(category);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool CategoryExists(int id)
        {
            return _context.Categories.Any(e => e.Id == id);
        }
    }
}
