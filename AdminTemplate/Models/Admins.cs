﻿using System;
using System.Collections.Generic;

namespace AdminTemplate.Models
{
    public partial class Admins
    {
        public int Id { get; set; }
        public string FullName { get; set; }
        public string Email { get; set; }
        public string Password { get; set; }
        public int? RolesId { get; set; }

        public virtual Roles Roles { get; set; }
    }
}
