using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace mediabalans_sufre.Models.BLL.Translate
{
    public class SeoTranslate : CoreEntity
    {
        public int SeoId { get; set; }
        public int LanguageId { get; set; }
        public string Title { get; set; }
        public string Key { get; set; }
        public string Descriptions { get; set; }
        public virtual Seo Seo { get; set; }
        public virtual Language Language { get; set; }
    }
}
