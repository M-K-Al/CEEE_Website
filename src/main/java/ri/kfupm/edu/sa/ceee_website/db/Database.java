package ri.kfupm.edu.sa.ceee_website.db;

import org.jetbrains.annotations.NotNull;

import java.sql.Connection;
import java.sql.DriverManager;

public class Database {
    private static Connection conn = null;

    @NotNull
    public static Connection getConnection() {
        if (conn == null) {
            try {
                Class.forName("org.postgresql.Driver");
                String dbURL = "jdbc:postgresql://localhost/CEEE";
                conn = DriverManager.getConnection(dbURL, "postgres", "1234");
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return conn;
    }
}
