using mediabalans_sufre.Models.BLL.Translate;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace mediabalans_sufre.Models.BLL
{
    public class Page : CoreEntity
    {
        public virtual ICollection<PageTranslate> PageTranslates { get; set; }
    }
}
