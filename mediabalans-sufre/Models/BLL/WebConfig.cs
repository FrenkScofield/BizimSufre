using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace mediabalans_sufre.Models.BLL
{
    public class WebConfig : CoreEntity
    {
        public string CompanyName { get; set; }
        public string Facebook { get; set; }
        public string Instagram { get; set; }
        public string Linkedin { get; set; }
        public string Youtube { get; set; }
        public string Twitter { get; set; }
        public string FacebookPixel { get; set; }
        public string GoogleAnalytics { get; set; }
        public string MetaTag { get; set; }
        public string Mail { get; set; }
        public string Phone { get; set; }
        public string Adress { get; set; }
        public string Copyright { get; set; }
    }
}
