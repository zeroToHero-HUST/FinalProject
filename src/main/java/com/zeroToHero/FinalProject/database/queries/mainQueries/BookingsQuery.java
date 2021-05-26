package com.zeroToHero.FinalProject.database.queries.mainQueries;

public interface BookingsQuery {
    String insertBooking =
        "INSERT INTO bookings (user_id, tour_id, start_date, end_date, price) VALUES (?::uuid, ?, ?, ?, ?::money);";

    String getBookingsByUserId =
        "SELECT * FROM bookings WHERE user_id = ?::uuid";
}
