using mediabalans_sufre.Models.BLL.Translate;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace mediabalans_sufre.Models.BLL
{
    public class Category : CoreEntity
    {
        public string FileUrl { get; set; }
        public virtual ICollection<CategoryTranslate> CategoryTranslates { get; set; }
        public virtual ICollection<Product> Products { get; set; }
    }
}
