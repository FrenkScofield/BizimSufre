using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace mediabalans_sufre.Models.BLL.Translate
{
    public class RecipeCategoryTranslate : CoreEntity
    {
        public int RecipeCategoryId { get; set; }
        public int LanguageId { get; set; }
        public string Name { get; set; }
        public virtual RecipeCategory RecipeCategory { get; set; }
        public virtual Language Language { get; set; }
    }
}
