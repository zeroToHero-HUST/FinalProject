package com.zeroToHero.FinalProject.database.queries.mainQueries;

public interface UsersQuery {
    String checkAvailableEmail =
        "SELECT EXISTS (SELECT email FROM users WHERE email = ?);";

    String insertNewUser =
        "INSERT INTO users (email, password, first_name, last_name, country_id) VALUES (?, ?, ?, ?, ?);";

    String getUserByEmail =
        "SELECT * FROM users WHERE users.email = ?";
}
