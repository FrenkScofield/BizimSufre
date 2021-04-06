using mediabalans_sufre.Models.BLL.Translate;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace mediabalans_sufre.Models.BLL
{
    public class Seo : CoreEntity
    {
        public string UniqueSeo { get; set; }
        public virtual ICollection<SeoTranslate> SeoTranslates { get; set; }
    }
}