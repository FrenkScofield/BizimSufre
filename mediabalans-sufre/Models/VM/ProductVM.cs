using mediabalans_sufre.Models.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace mediabalans_sufre.Models.VM
{
    public class ProductVM
    {
        public Category Category { get; set; }
        public List<Product> Products { get; set; }
        public Product Product { get; set; }
    }
}
