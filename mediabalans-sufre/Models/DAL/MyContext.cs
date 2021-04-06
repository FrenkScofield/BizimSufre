using mediabalans_sufre.Models.BLL;
using mediabalans_sufre.Models.BLL.Translate;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace mediabalans_sufre.Models.DAL
{
    public class MyContext : DbContext
    {
        public MyContext(DbContextOptions<MyContext> options) : base(options) { }
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseLazyLoadingProxies();
        }

        public DbSet<AdminUser> AdminUsers { get; set; }
        public DbSet<Blog> Blogs { get; set; }
        public DbSet<Category> Categories { get; set; }
        public DbSet<Language> Languages { get; set; }
        public DbSet<Page> Pages { get; set; }
        public DbSet<Product> Products { get; set; }
        public DbSet<Recipe> Recipes { get; set; }
        public DbSet<RecipeCategory> RecipeCategories { get; set; }
        public DbSet<RecipeFile> RecipeFiles { get; set; }
        public DbSet<Seo> Seos { get; set; }
        public DbSet<Slider> Sliders { get; set; }
        public DbSet<WebConfig> WebConfigs { get; set; }
        public DbSet<Resource> Resources { get; set; }

        public DbSet<PageTranslate> PageTranslates { get; set; }
        public DbSet<BlogTranslate> BlogTranslates { get; set; }
        public DbSet<SeoTranslate> SeoTranslates { get; set; }
        public DbSet<CategoryTranslate> CategoryTranslates { get; set; }
        public DbSet<ProductTranslate> ProductTranslates { get; set; }
        public DbSet<RecipeCategoryTranslate> RecipeCategoryTranslates { get; set; }
        public DbSet<RecipeTranslate> RecipeTranslates { get; set; }
        public DbSet<ResourceTranslate> ResourceTranslates { get; set; }
    }

}
