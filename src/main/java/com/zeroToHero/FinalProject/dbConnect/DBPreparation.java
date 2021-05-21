package com.zeroToHero.FinalProject.dbConnect;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

public abstract class DBPreparation {
    protected String url;
    protected String user;
    protected String password;

    public DBPreparation(String url, String username, String password)
    {
        this.url = url;
        this.user = username;
        this.password = password;
    }

    public void run(String query) throws SQLException {
        Connection conn = new DBConnectionManager(url, user, password).getConnection();
        Statement st = conn.createStatement();
        st.execute(query);
        st.close();
        conn.close();
    }
}
