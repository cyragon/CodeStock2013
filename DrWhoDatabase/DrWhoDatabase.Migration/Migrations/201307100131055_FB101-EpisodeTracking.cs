namespace DrWhoDatabase.Migration.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class FB101EpisodeTracking : DbMigration
    {
        public override void Up()
        {
            CreateTable("Episode", c =>
                new {
                    EpisodeID = c.Int(identity: true, nullable: false),
                    AirDate = c.DateTime(),
                    Title = c.String()
                });

            Sql(@"insert into episode(airdate, title) values ('11/23/1963','An Unearthly Child')");
        }
        
        public override void Down()
        {
            DropTable("Episode");
        }
    }
}
