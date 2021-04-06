using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace mediabalans_sufre.Models.BLL.Translate
{
    public class PageTranslate : CoreEntity
    {
        public int PageId { get; set; }
        public int LanguageId { get; set; }
        public string Title { get; set; }
        public string Descriptions { get; set; }
        public virtual Page Page { get; set; }
        public virtual Language Language { get; set; }

    }
}
