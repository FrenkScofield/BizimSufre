using mediabalans_sufre.Models.BLL.Translate;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace mediabalans_sufre.Models.BLL
{
    public class Blog : CoreEntity
    {
        public string FileUrl { get; set; }
        public string VideoLink { get; set; }
        public string UniqueSeo { get; set; }
        public DateTime CreatDate { get; set; }
        public bool? Approve { get; set; }
        public virtual ICollection<BlogTranslate> BlogTranslates { get; set; }

    }
}
