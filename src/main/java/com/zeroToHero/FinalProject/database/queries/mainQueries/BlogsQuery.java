package com.zeroToHero.FinalProject.database.queries.mainQueries;

public interface BlogsQuery {
    String getBlogsByPage =
        "SELECT * FROM f_GetBlogsByPageNumberAndSize(?, 3);";

    String count =
        "SELECT count(*) FROM blogs;";

    String insertBlog =
        "INSERT INTO blogs (user_id, title, content, images) VALUES (?::uuid, ?, ?, ?);";
}
