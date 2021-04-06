using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace mediabalans_sufre.Models.BLL.Translate
{
    public class CategoryTranslate : CoreEntity
    {
        public int CategoryId { get; set; }
        public int LanguageId { get; set; }
        public string Title { get; set; }
        public string SeoUrl { get; set; }
        public virtual Category Category { get; set; }
        public virtual Language Language { get; set; }
    }
}
