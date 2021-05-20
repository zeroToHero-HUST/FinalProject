package com.zeroToHero.FinalProject.dbConnect;


public interface SQLQuery {
    public String createTBNation = "create table nation(\n" +
            "\tnation_id int generated  always as identity,\n" +
            "\tname varchar(100),\n" +
            "\tprimary key(nation_id)\n" +
            ");";
    public final  String createTBCity = "create table city(\n" +
            "\tcity_id int generated always as identity,\n" +
            "\tname varchar (100) not null,\n" +
            "\tnation_id int,\n" +
            "\tprimary key(city_id),\n" +
            "\tconstraint fk_nation \n" +
            "\t\tforeign key (nation_id) references nation(nation_id)\n" +
            ")";
    public final String creatTBTags = "create table tags(\n" +
            "\ttags_id int generated always as identity,\n" +
            "\tname varchar(100),\n" +
            "\tprimary key(tags_id)\n" +
            ")";
    public final String createTBDestination = "create table destination (\n" +
            "\tdestination_id int generated always as identity,\n" +
            "\tname varchar(50) not null,\n" +
            "\tarticle varchar(500),\n" +
            "\tnation_id int,\n" +
            "\ttags_id int,\n" +
            "\tdescription varchar(1000),\n" +
            "\tcontent varchar(1000),\n" +
            "\tcity_id int,\n" +
            "\tprimary key(destination_id),\n" +
            "\tconstraint fk_nation foreign key(nation_id) references nation(nation_id),\n" +
            "\tconstraint fk_tags foreign key(tags_id) references tags(tags_id),\n" +
            "\tconstraint fk_city foreign key(city_id) references city(city_id)\n" +
            ")\n";
    public final String alterTBDestination = "alter table destination\n" +
            "add column time timestamp without time zone";
    public final String creatTBViewer = "create table viewer (\n" +
            "\tuser_id int generated always as identity,\n" +
            "\tuser_name varchar(100) not null,\n" +
            "\tpassword varchar(100) not null,\n" +
            "\tprimary key(user_id)\n" +
            ")";
}
