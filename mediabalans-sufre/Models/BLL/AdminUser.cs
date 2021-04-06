using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace mediabalans_sufre.Models.BLL
{
    public class AdminUser : CoreEntity
    {
        [MaxLength(70)]
        public string FirstName { get; set; }
        [MaxLength(70)]
        public string LastName { get; set; }
        [MaxLength(70)]
        public string Mail { get; set; }
        [MaxLength(70)]
        public string UserName { get; set; }
        [MaxLength(70)]
        public string Password { get; set; }
        [MaxLength(50)]
        public string Rol { get; set; }
    }
}
