using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace mediabalans_sufre.Models.BLL.Translate
{
    public class RecipeTranslate : CoreEntity
    {
        public int RecipeId { get; set; }
        public int LanguageId { get; set; }
        public string Title { get; set; }
        public string Summary { get; set; }
        public string Descriptions { get; set; }
        public string SeoUrl { get; set; }
        public virtual Recipe Recipe { get; set; }
        public virtual Language Language { get; set; }
    }
}
