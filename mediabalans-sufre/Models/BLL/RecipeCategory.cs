using mediabalans_sufre.Models.BLL.Translate;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace mediabalans_sufre.Models.BLL
{
    public class RecipeCategory : CoreEntity
    {
        public virtual ICollection<RecipeCategoryTranslate> RecipeCategoryTranslates { get; set; }
        public virtual ICollection<Recipe> Recipes { get; set; }
    }
}
