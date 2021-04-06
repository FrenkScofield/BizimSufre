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
using Microsoft.AspNetCore.Http;
using mediabalans_sufre.Extensions;

namespace mediabalans_sufre.Areas.WebCms.Controllers
{
    [Area("WebCms")]
    [Route("WebCms/[controller]/[action]")]
    public class BlogsController : Controller
    {
        private readonly MyContext _context;

        public BlogsController(MyContext context)
        {
            _context = context;
        }
        public async Task<IActionResult> Index()
        {
            return View(await _context.Blogs.OrderBy(x => x.OrderBy).ToListAsync());
        }

        public IActionResult Create()
        {
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create(IFormFile file, Blog blog, List<BlogTranslate> translates, List<SeoTranslate> seos)
        {
            if (ModelState.IsValid)
            {
                if (file != null)
                {
                    if (ImagesHelpers.ImageIsValid(file))
                    {
                        blog.FileUrl = await ImagesHelpers.UploadAsync(file, "files/blog/");
                    }
                }

                string code = Generatorcode.Code();
                blog.UniqueSeo = code;
                var sonuc = _context.Add(blog);
                await _context.SaveChangesAsync();

                foreach (var item in translates)
                {
                    item.BlogId = sonuc.Entity.Id;
                    item.SeoUrl = UrlSeoHelpers.UrlSeo(item.Title);
                    _context.BlogTranslates.Add(item);
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
            return View(blog);
        }

 
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var blog = await _context.Blogs.FindAsync(id);
            if (blog == null)
            {
                return NotFound();
            }
            return View(blog);
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, IFormFile file, Blog blog, List<BlogTranslate> translates, List<SeoTranslate> seos)
        {
            if (id != blog.Id)
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
                            if (blog.FileUrl != null && blog.FileUrl != string.Empty)
                            {
                                ImagesHelpers.DeleteImage(blog.FileUrl, "files/blog/");
                            }
                            blog.FileUrl = await ImagesHelpers.UploadAsync(file, "files/blog/");
                        }
                    }
                    _context.Update(blog);
                    foreach (var item in translates)
                    {
                        item.SeoUrl = UrlSeoHelpers.UrlSeo(item.Title);
                        _context.BlogTranslates.Update(item);
                    }
                    foreach (var item in seos)
                    {
                        _context.SeoTranslates.Update(item);
                    }
                  
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!BlogExists(blog.Id))
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
            return View(blog);
        }

        public async Task<IActionResult> Delete(int id)
        {
            var blog = await _context.Blogs.FindAsync(id);
            if (blog.FileUrl != null && blog.FileUrl != string.Empty)
            {
                ImagesHelpers.DeleteImage(blog.FileUrl, "files/blog/");
            }
            var seo = await _context.Seos.FirstOrDefaultAsync(x => x.UniqueSeo == blog.UniqueSeo);
            _context.Seos.Remove(seo);
            _context.Blogs.Remove(blog);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool BlogExists(int id)
        {
            return _context.Blogs.Any(e => e.Id == id);
        }
    }
}
