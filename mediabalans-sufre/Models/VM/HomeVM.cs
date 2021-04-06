using mediabalans_sufre.Models.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace mediabalans_sufre.Models.VM
{
    public class HomeVM
    {
        public List<Slider> Sliders { get; set; }
        public List<Recipe> Recipes { get; set; }
        public List<Category> Categories { get; set; }
        public List<Product> Products { get; set; }
    }
}
