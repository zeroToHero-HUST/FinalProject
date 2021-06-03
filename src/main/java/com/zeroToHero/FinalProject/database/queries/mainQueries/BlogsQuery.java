package com.zeroToHero.FinalProject.database.queries.mainQueries;

public interface BlogsQuery {
    String insertBlogs =
            "INSERT INTO comments (user_id, comment_id, content, blog_id) VALUES (?::uuid, ?, ?, ?);";


}
