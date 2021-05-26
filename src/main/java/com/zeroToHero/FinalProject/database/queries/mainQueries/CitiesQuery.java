package com.zeroToHero.FinalProject.database.queries.mainQueries;

public interface CitiesQuery {
    String getAllCities =
        "SELECT cities.city_id, cities.name FROM cities;";
}
