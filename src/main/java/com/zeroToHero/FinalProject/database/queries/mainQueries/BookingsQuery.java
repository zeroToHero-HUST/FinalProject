package com.zeroToHero.FinalProject.database.queries.mainQueries;

public interface BookingsQuery {
    String insertBooking =
        "INSERT INTO bookings (user_id, tour_id, start_date, end_date, price) VALUES (?::uuid, ?, ?, ?, ?::money);";

    String getBookingsByUserId =
        "SELECT * FROM bookings WHERE user_id = ?::uuid";

    String getBookingsTourNameByUserId =
        "SELECT booking_id, user_id, tours.title, bookings.created_at, bookings.start_date, bookings.end_date, bookings.price FROM bookings, tours WHERE bookings.tour_id = tours.tour_id AND bookings.user_id = ?::uuid";
}
