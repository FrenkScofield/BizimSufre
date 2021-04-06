using mediabalans_sufre.Models.BLL.Translate;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace mediabalans_sufre.Models.BLL
{
    public class Language : CoreEntity
    {
        [MaxLength(25)]
        public string ShortName { get; set; }
        [MaxLength(25)]
        public string Code { get; set; }
        [MaxLength(70)]
        public string Name { get; set; }
        public virtual ICollection<PageTranslate> PageTranslates { get; set; }
        public virtual ICollection<BlogTranslate> BlogTranslates { get; set; }
        public virtual ICollection<SeoTranslate> SeoTranslates { get; set; }
        public virtual ICollection<CategoryTranslate> CategoryTranslates { get; set; }
        public virtual ICollection<ProductTranslate> ProductTranslates { get; set; }
        public virtual ICollection<RecipeCategoryTranslate> RecipeCategoryTranslates { get; set; }
        public virtual ICollection<RecipeTranslate> RecipeTranslates { get; set; }
        public virtual ICollection<ResourceTranslate> ResourceTranslates { get; set; }
    }
}
