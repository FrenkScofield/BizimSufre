using mediabalans_sufre.Models.BLL.Translate;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace mediabalans_sufre.Models.BLL
{
    public class Resource : CoreEntity
    {
        public string PageKey { get; set; }
        public string Key { get; set; }
        public virtual ICollection<ResourceTranslate> ResourceTranslates { get; set; }
    }
}
