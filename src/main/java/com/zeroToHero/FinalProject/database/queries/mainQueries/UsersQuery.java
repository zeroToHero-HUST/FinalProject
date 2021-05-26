package com.zeroToHero.FinalProject.database.queries.mainQueries;

public interface UsersQuery {
    String checkAvailableEmail =
        "SELECT EXISTS (SELECT email FROM users WHERE email = ?);";

    String insertNewUser =
        "INSERT INTO users (email, password, first_name, last_name, country_id) VALUES (?, ?, ?, ?, ?);";

    String getUserByEmail =
        "SELECT * FROM users WHERE users.email = ?";

    String getUsersByPage =
        "SELECT * FROM f_getusersbypagenumberandsize(?, 10);";

    String updateUser =
        "UPDATE users SET (first_name, last_name, email, role, profile_image) = (?, ?, ?, ?::role_type, ?) WHERE user_id = ?::uuid;";

    String count =
        "SELECT count(*) FROM users;";

    String deleteUser =
        "DELETE FROM users WHERE users.user_id = ?::uuid AND users.email = ?;";
}
