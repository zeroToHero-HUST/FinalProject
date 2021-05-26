package com.zeroToHero.FinalProject.database.queries.prepQueries;

public interface CreateQuery {
    StringBuilder createType = new StringBuilder(
        "CREATE TYPE \"role_type\" AS ENUM (\n" +
            "  'admin',\n" +
            "  'user',\n" +
            "  'blogger'\n" +
        ");"
    );

    StringBuilder createTBUsers = new StringBuilder(
        "CREATE TABLE \"users\" (\n" +
            "\t\"user_id\" uuid PRIMARY KEY DEFAULT (gen_random_uuid()),\n" +
            "\t\"email\" varchar(320) UNIQUE NOT NULL,\n" +
            "\t\"password\" varchar(150) NOT NULL,\n" +
            "\t\"first_name\" varchar(100) NOT NULL,\n" +
            "\t\"last_name\" varchar(100) NOT NULL,\n" +
            "\t\"profile_image\" text,\n" +
            "\t\"created_at\" timestamp NOT NULL DEFAULT (now()),\n" +
            "\t\"role\" role_type NOT NULL DEFAULT 'user',\n" +
            "\t\"country_id\" int NOT NULL DEFAULT 1\n" +
        ");"
    );

    StringBuilder createTBCountries = new StringBuilder(
        "CREATE TABLE \"countries\" (\n" +
            "\t\"country_id\" serial PRIMARY KEY,\n" +
            "\t\"name\" varchar(100) NOT NULL,\n" +
            "\t\"description\" text NOT NULL\n" +
        ");"
    );

    StringBuilder createTBCities = new StringBuilder(
        "CREATE TABLE \"cities\" (\n" +
            "\t\"city_id\" serial PRIMARY KEY,\n" +
            "\t\"name\" varchar(100) NOT NULL,\n" +
            "\t\"country_id\" int NOT NULL,\n" +
            "\t\"description\" text NOT NULL\n" +
        ");"
    );

    StringBuilder createTBTours = new StringBuilder(
        "CREATE TABLE \"tours\" (\n" +
            "\t\"tour_id\" serial PRIMARY KEY,\n" +
            "\t\"title\" varchar(100) NOT NULL,\n" +
            "\t\"description\" text NOT NULL,\n" +
            "\t\"images\" varchar[],\n" +
            "\t\"duration\" int NOT NULL,\n" +
            "\t\"rating\" real,\n" +
            "\t\"price\" money NOT NULL\n" +
        ");"
    );

    StringBuilder createTBBlogs = new StringBuilder(
        "CREATE TABLE \"blogs\" (\n" +
            "\t\"blog_id\" serial PRIMARY KEY,\n" +
            "\t\"user_id\" uuid NOT NULL,\n" +
            "\t\"created_at\" timestamp NOT NULL DEFAULT (now()),\n" +
            "\t\"updated_at\" timestamp NOT NULL DEFAULT (now()),\n" +
            "\t\"title\" text NOT NULL,\n" +
            "\t\"content\" text NOT NULL,\n" +
            "\t\"images\" varchar[]\n" +
        ");"
    );

    StringBuilder createTBComments = new StringBuilder(
        "CREATE TABLE \"comments\" (\n" +
            "\t\"comment_id\" serial PRIMARY KEY,\n" +
            "\t\"user_id\" uuid NOT NULL,\n" +
            "\t\"content\" text NOT NULL,\n" +
            "\t\"created_at\" timestamp NOT NULL DEFAULT (now()),\n" +
            "\t\"updated_at\" timestamp NOT NULL DEFAULT (now()),\n" +
            "\t\"blog_id\" int,\n" +
            "\t\"review_id\" int\n" +
        ");"
    );

    StringBuilder createTBReviews = new StringBuilder(
        "CREATE TABLE \"reviews\" (\n" +
            "\t\"review_id\" serial PRIMARY KEY,\n" +
            "\t\"booking_id\" int NOT NULL,\n" +
            "\t\"content\" text NOT NULL,\n" +
            "\t\"images\" varchar[],\n" +
            "\t\"created_at\" timestamp NOT NULL DEFAULT (now()),\n" +
            "\t\"updated_at\" timestamp NOT NULL DEFAULT (now()),\n" +
            "\t\"rating\" real NOT NULL\n" +
        ");"
    );

    StringBuilder createTBBookings = new StringBuilder(
        "CREATE TABLE \"bookings\" (\n" +
            "\t\"booking_id\" serial PRIMARY KEY,\n" +
            "\t\"user_id\" uuid NOT NULL,\n" +
            "\t\"tour_id\" int NOT NULL,\n" +
            "\t\"created_at\" timestamp NOT NULL DEFAULT (now()),\n" +
            "\t\"start_date\" date NOT NULL,\n" +
            "\t\"end_date\" date NOT NULL,\n" +
            "\t\"price\" money NOT NULL\n" +
        ");"
    );

    StringBuilder createTBDestinations = new StringBuilder(
        "CREATE TABLE \"destinations\" (\n" +
            "\t\"tour_id\" serial NOT NULL,\n" +
            "\t\"city_id\" int NOT NULL\n" +
        ");"
    );

    StringBuilder createRelations = new StringBuilder(
        "ALTER TABLE \"users\" ADD FOREIGN KEY (\"country_id\") REFERENCES \"countries\" (\"country_id\");\n" +
            "\n" +
        "ALTER TABLE \"cities\" ADD FOREIGN KEY (\"country_id\") REFERENCES \"countries\" (\"country_id\");\n" +
            "\n" +
        "ALTER TABLE \"blogs\" ADD FOREIGN KEY (\"user_id\") REFERENCES \"users\" (\"user_id\");\n" +
            "\n" +
        "ALTER TABLE \"comments\" ADD FOREIGN KEY (\"user_id\") REFERENCES \"users\" (\"user_id\");\n" +
            "\n" +
        "ALTER TABLE \"comments\" ADD FOREIGN KEY (\"blog_id\") REFERENCES \"blogs\" (\"blog_id\");\n" +
            "\n" +
        "ALTER TABLE \"bookings\" ADD FOREIGN KEY (\"user_id\") REFERENCES \"users\" (\"user_id\");\n" +
            "\n" +
        "ALTER TABLE \"bookings\" ADD FOREIGN KEY (\"tour_id\") REFERENCES \"tours\" (\"tour_id\");\n" +
            "\n" +
        "ALTER TABLE \"reviews\" ADD FOREIGN KEY (\"booking_id\") REFERENCES \"bookings\" (\"booking_id\");\n" +
            "\n" +
        "ALTER TABLE \"comments\" ADD FOREIGN KEY (\"review_id\") REFERENCES \"reviews\" (\"review_id\");\n" +
            "\n" +
        "ALTER TABLE \"destinations\" ADD FOREIGN KEY (\"city_id\") REFERENCES \"cities\" (\"city_id\");\n" +
            "\n" +
        "ALTER TABLE \"destinations\" ADD FOREIGN KEY (\"tour_id\") REFERENCES \"tours\" (\"tour_id\");"
    );

    StringBuilder createFnGetUsersByPageNumberAndSize = new StringBuilder(
        "CREATE OR REPLACE FUNCTION f_GetUsersByPageNumberAndSize(\n" +
        "    PageNumber INTEGER = NULL,\n" +
        "    PageSize INTEGER = NULL\n" +
        ")\n" +
        "    RETURNS SETOF users AS\n" +
        "$BODY$\n" +
        "DECLARE\n" +
        "    PageOffset INTEGER :=0;\n" +
        "BEGIN\n" +
        "\n" +
        "    PageOffset := ((PageNumber-1) * PageSize);\n" +
        "\n" +
        "    RETURN QUERY\n" +
        "        SELECT *\n" +
        "        FROM users\n" +
        "        ORDER BY created_at\n" +
        "        OFFSET PageOffset\n" +
        "        FETCH NEXT PageSize ROWS ONLY;\n" +
        "END;\n" +
        "$BODY$\n" +
        "    LANGUAGE plpgsql;"
    );

    StringBuilder createFnGetToursByPageNumberAndSize = new StringBuilder(
        "CREATE OR REPLACE FUNCTION f_GetToursByPageNumberAndSize(PageNumber INTEGER = NULL, PageSize INTEGER = NULL)\n" +
        "RETURNS TABLE (\n" +
        "    tour_id integer,\n" +
        "    title varchar(100),\n" +
        "    description text,\n" +
        "    images varchar[],\n" +
        "    duration integer,\n" +
        "    rating real,\n" +
        "    price money,\n" +
        "    cities_list integer[]) \n" +
        "AS\n" +
        "    $BODY$\n" +
        "    DECLARE\n" +
        "        PageOffset INTEGER :=0;\n" +
        "    BEGIN\n" +
        "    \n" +
        "        PageOffset := ((PageNumber-1) * PageSize);\n" +
        "    \n" +
        "    RETURN QUERY\n" +
        "        SELECT tours.tour_id, tours.title, tours.description, tours.images, tours.duration, tours.rating, tours.price, array_agg(cities.city_id) AS cities_list\n" +
        "        FROM tours, destinations, cities\n" +
        "        WHERE tours.tour_id = destinations.tour_id\n" +
        "            AND destinations.city_id = cities.city_id\n" +
        "        GROUP BY tours.tour_id\n" +
        "        ORDER BY tours.tour_id\n" +
        "        OFFSET PageOffset\n" +
        "        FETCH NEXT PageSize ROWS ONLY;\n" +
        "    END;\n" +
        "    $BODY$\n" +
        "LANGUAGE plpgsql;"
    );

    StringBuilder createAll = createType
        .append(createTBUsers)
        .append(createTBCountries)
        .append(createTBCities)
        .append(createTBTours)
        .append(createTBBlogs)
        .append(createTBComments)
        .append(createTBReviews)
        .append(createTBBookings)
        .append(createTBDestinations)
        .append(createRelations)
        .append(createFnGetUsersByPageNumberAndSize)
        .append(createFnGetToursByPageNumberAndSize);
}
