using mediabalans_sufre.Models.BLL.Translate;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace mediabalans_sufre.Models.BLL
{
    public class Recipe : CoreEntity
    {
        public int RecipeCategoryId { get; set; }
        public DateTime CreateDate { get; set; }
        public string UniqueSeo { get; set; }
        public string VideoLink { get; set; }
        public bool? Approve { get; set; }
        public virtual RecipeCategory RecipeCategory { get; set; }
        public virtual ICollection<RecipeFile> RecipeFiles { get; set; }
        public virtual ICollection<RecipeTranslate> RecipeTranslates { get; set; }
    }
}
