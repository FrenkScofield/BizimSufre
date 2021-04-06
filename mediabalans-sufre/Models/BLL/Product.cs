using mediabalans_sufre.Models.BLL.Translate;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace mediabalans_sufre.Models.BLL
{
    public class Product : CoreEntity
    {

        public int CategoryId { get; set; }
        public string UniqueSeo { get; set; }
        public string FileUrl { get; set; }
        public string Facts { get; set; }
        public bool? Approve { get; set; }
        public virtual Category Category { get; set; }
        public virtual ICollection<ProductTranslate> ProductTranslates { get; set; }
    }
}
