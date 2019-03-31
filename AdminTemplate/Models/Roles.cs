using System;
using System.Collections.Generic;

namespace AdminTemplate.Models
{
    public partial class Roles
    {
        public Roles()
        {
            Admins = new HashSet<Admins>();
            LinkRolesMenus = new HashSet<LinkRolesMenus>();
        }

        public int Id { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }

        public virtual ICollection<Admins> Admins { get; set; }
        public virtual ICollection<LinkRolesMenus> LinkRolesMenus { get; set; }
    }
}
