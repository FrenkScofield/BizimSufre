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
    public class SeosController : Controller
    {
        private readonly MyContext _context;

        public SeosController(MyContext context)
        {
            _context = context;
        }


        public async Task<IActionResult> Index()
        {
            return View(await _context.Seos.ToListAsync());
        }

        public IActionResult Create()
        {
            return View();
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create(Seo seo, List<SeoTranslate> translates)
        {
            if (ModelState.IsValid)
            {
                var sonuc = _context.Add(seo);
                await _context.SaveChangesAsync();
                foreach (var item in translates)
                {
                    item.SeoId = sonuc.Entity.Id;
                    _context.SeoTranslates.Add(item);
                }
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            return View(seo);
        }

        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var seo = await _context.Seos.FindAsync(id);
            if (seo == null)
            {
                return NotFound();
            }
            return View(seo);
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, Seo seo, List<SeoTranslate> translates)
        {
            if (id != seo.Id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(seo);
                    foreach (var item in translates)
                    {
                        _context.SeoTranslates.Update(item);
                    }
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!SeoExists(seo.Id))
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
            return View(seo);
        }

        public async Task<IActionResult> Delete(int id)
        {
            var seo = await _context.Seos.FindAsync(id);
            _context.Seos.Remove(seo);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool SeoExists(int id)
        {
            return _context.Seos.Any(e => e.Id == id);
        }
    }
}
