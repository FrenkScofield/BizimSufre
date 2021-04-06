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
    //[Authorize(Roles = "Admin,Manger,Editor")]
    public class ProductsController : Controller
    {
        private readonly MyContext _context;

        public ProductsController(MyContext context)
        {
            _context = context;
        }
        public async Task<IActionResult> Index()
        {
            var myContext = _context.Products.Include(p => p.Category);
            return View(await myContext.OrderBy(x=>x.OrderBy).ToListAsync());
        }

  
        public IActionResult Create()
        {
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create(IFormFile file, IFormFile fact, Product product, List<ProductTranslate> translates, List<SeoTranslate> seos)
        {
            if (ModelState.IsValid)
            {
                if (file != null)
                {
                    if (ImagesHelpers.ImageIsValid(file))
                    {
                        product.FileUrl = await ImagesHelpers.UploadAsync(file, "files/prod/");
                    }
                }
                if (fact != null)
                {
                    if (ImagesHelpers.ImageIsValid(file))
                    {
                        product.Facts = await ImagesHelpers.UploadAsync(fact, "files/prod/fact/");
                    }
                }

                string code = Generatorcode.Code();
                product.UniqueSeo = code;
                var sonuc = _context.Add(product);
                await _context.SaveChangesAsync();

                foreach (var item in translates)
                {
                    item.ProductId = sonuc.Entity.Id;
                    item.SeoUrl = UrlSeoHelpers.UrlSeo(item.Title) + "-" + Guid.NewGuid().ToString().Replace("-", "").Substring(0, 4);
                    _context.ProductTranslates.Add(item);
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
            return View(product);
        }

        // GET: WebCms/Products/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var product = await _context.Products.FindAsync(id);
            if (product == null)
            {
                return NotFound();
            }
            return View(product);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, IFormFile file, IFormFile fact, Product product, List<ProductTranslate> translates, List<SeoTranslate> seos)
        {
            if (id != product.Id)
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
                            if (product.FileUrl != null && product.FileUrl != string.Empty)
                            {
                                ImagesHelpers.DeleteImage(product.FileUrl, "files/prod/");
                            }
                            product.FileUrl = await ImagesHelpers.UploadAsync(file, "files/prod/");
                        }
                    }
                    if (fact != null)
                    {
                        if (ImagesHelpers.ImageIsValid(file))
                        {
                            if (product.Facts != null && product.Facts != string.Empty)
                            {
                                ImagesHelpers.DeleteImage(product.Facts, "files/prod/fact/");
                            }
                            product.Facts = await ImagesHelpers.UploadAsync(file, "files/prod/fact/");
                        }
                    }

                    _context.Update(product);
                    foreach (var item in translates)
                    {
                        item.SeoUrl = UrlSeoHelpers.UrlSeo(item.Title) + "-" + Guid.NewGuid().ToString().Replace("-", "").Substring(0, 4);
                        _context.ProductTranslates.Update(item);
                    }
                    foreach (var item in seos)
                    {
                        _context.SeoTranslates.Update(item);
                    }
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!ProductExists(product.Id))
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

            ViewData["CategoryId"] = new SelectList(_context.Categories, "Id", "Id", product.CategoryId);
            return View(product);
        }

        public async Task<IActionResult> Delete(int id)
        {
            var product = await _context.Products.FindAsync(id);
            if (product.FileUrl != null && product.FileUrl != string.Empty)
            {
                ImagesHelpers.DeleteImage(product.FileUrl, "files/prod/");
            }
            if (product.Facts != null && product.Facts != string.Empty)
            {
                ImagesHelpers.DeleteImage(product.Facts, "files/prod/fact/");
            }
            var seo = await _context.Seos.FirstOrDefaultAsync(x => x.UniqueSeo == product.UniqueSeo);
            _context.Seos.Remove(seo);
            _context.Products.Remove(product);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool ProductExists(int id)
        {
            return _context.Products.Any(e => e.Id == id);
        }
    }
}
