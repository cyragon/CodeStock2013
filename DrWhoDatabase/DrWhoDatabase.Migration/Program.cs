using System;
using System.Collections.Generic;
using System.Data.Entity.Migrations;
using System.Data.Entity.Migrations.Infrastructure;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DrWhoDatabase.Migration.Migrations;

namespace DrWhoDatabase.Migration
{
    class Program
    {
        static void Main(string[] args)
        {
            var configuration = new Configuration();
            configuration.TargetDatabase = new System.Data.Entity.Infrastructure.DbConnectionInfo("Data Source=localhost\\sqlexpress;Initial Catalog=DrWho2013;User ID=drwho;Password=drwho", "System.Data.SqlClient");
            var migrator = new DbMigrator(configuration);

            var scriptor = new MigratorScriptingDecorator(migrator);
            var script = scriptor.ScriptUpdate(sourceMigration: null, targetMigration: null);
            System.IO.File.WriteAllText("script.sql", script);
        }
    }
}
