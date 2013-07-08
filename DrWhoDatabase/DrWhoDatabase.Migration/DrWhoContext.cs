using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DrWhoDatabase.Migration
{
    public class DrWhoContext : DbContext
    {
        public DrWhoContext()
            : base("DrWho2013")
        { }
    }
}
