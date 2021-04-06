using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace mediabalans_sufre.Models.BLL
{
    public class RecipeFile : CoreEntity
    {
        public int RecipeId { get; set; }
        public string FileUrl { get; set; }
        public virtual Recipe Recipe { get; set; }
    }
}
