namespace DrWhoDatabase.Migration.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class FB100LinkingTable : DbMigration
    {
        public override void Up()
        {
            // create a linking table for doctor and companion 
            CreateTable("DoctorCompanion", c => new
            {
                DoctorID = c.Int(nullable: false),
                CompanionID = c.Int(nullable: false)
            });
            
        }
        
        public override void Down()
        {
            DropTable("DoctorCompanion");
        }
    }
}
