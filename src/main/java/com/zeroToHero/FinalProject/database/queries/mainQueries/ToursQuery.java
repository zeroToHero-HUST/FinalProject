package com.zeroToHero.FinalProject.database.queries.mainQueries;

public interface ToursQuery {
    String getPopularTours =
        "SELECT tours.tour_id, title, duration, price, countries.name AS country_name " +
        "FROM tours, destinations, cities, countries " +
        "WHERE tours.tour_id = destinations.tour_id " +
                "AND destinations.city_id = cities.city_id " +
                "AND cities.country_id = countries.country_id " +
        "GROUP BY tours.tour_id, countries.name " +
        "LIMIT 6;";

    String getToursByPage =
        "SELECT * FROM f_gettoursbypagenumberandsize(?, 10);";

    String count =
        "SELECT count(*) FROM tours;";
}
