package com.zeroToHero.FinalProject.database.queries.mainQueries;

public interface CommentsQuery {
    String insertComments =
            "INSERT INTO comments (user_id, comment_id, content, blog_id) VALUES (?::uuid, ?, ?, ?);";

    String getAllComments =
            "SELECT DISTINCT comments.comment_id, comments.content, comments.user_id, comments.created_at, users.first_name, users.last_name " +
            "FROM comments, users " +
            "WHERE comments.blog_id = ? AND comments.user_id = users.user_id;";
}
