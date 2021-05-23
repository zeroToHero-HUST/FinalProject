package com.zeroToHero.FinalProject.database.dbPrep;

import com.zeroToHero.FinalProject.database.DBConnectionManager;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

public abstract class DBPrep {
    public void run(String query) throws SQLException {
        Connection conn = new DBPrepConnection().getConnection();
        Statement st = conn.createStatement();
        st.execute(query);
        st.close();
        conn.close();
    }
}
