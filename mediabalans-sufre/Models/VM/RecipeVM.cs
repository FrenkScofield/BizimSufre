using mediabalans_sufre.Models.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace mediabalans_sufre.Models.VM
{
    public class RecipeVM
    {
        public Recipe Recipe { get; set; }
        public List<Recipe> Recipes { get; set; }
        public List<RecipeCategory> RecipeCategories { get; set; }
    }
}
