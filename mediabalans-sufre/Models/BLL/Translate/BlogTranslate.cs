using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace mediabalans_sufre.Models.BLL.Translate
{
    public class BlogTranslate : CoreEntity
    {
        public int BlogId { get; set; }
        public int LanguageId { get; set; }
        public string Title { get; set; }
        public string Summray { get; set; }
        public string Descriptions { get; set; }
        public string SeoUrl { get; set; }
        public virtual Blog Blog { get; set; }
        public virtual Language Language { get; set; }
    }
}
