using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace mediabalans_sufre.Models.BLL.Translate
{
    public class ResourceTranslate : CoreEntity
    {
        public int ResourceId { get; set; }
        public int LanguageId { get; set; }
        public string Value { get; set; }
        public virtual Resource Resource { get; set; }
        public virtual Language Language { get; set; }
    }
}
