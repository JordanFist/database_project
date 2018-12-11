import java.sql.*;
import oracle.jdbc.pool.OracleDataSource;

public class Consultations {
    public OracleDataSource ods;
    public Connection conn;
    public Statement stmt;

    public Consultations() {
    }

    void closeBase() {
        try {
            if (stmt != null) {
                stmt.close();
            }
            if (conn != null) {
                conn.close();
            }
        } catch (Exception e) {
        }
    }

    void choix1(String assosciation) throws SQLException, ClassNotFoundException, java.io.IOException {
        ods = new OracleDataSource();
        ods.setUser("jsandri");
        ods.setPassword("jsandri");
        ods.setURL("jdbc:oracle:thin:@localhost:1521/oracle");

        conn = null;
        stmt = null;

        try {
            conn = ods.getConnection();
            stmt = conn.createStatement();
            ResultSet rset = stmt.executeQuery("select *" + "from ASSOCIATIONS");

            while (rset.next()) { // Affichage du resultat.
                System.out.println(rset.getString(2));
            }
        } finally {
            closeBase();
        }
    }

    void choix2(String assosciation, String date) throws SQLException, ClassNotFoundException, java.io.IOException {
    }

    void choix3(String assosciation, String date) throws SQLException, ClassNotFoundException, java.io.IOException {
    }

    void choix4(String assosciation) throws SQLException, ClassNotFoundException, java.io.IOException {
    }

    void choix5(String assosciation) throws SQLException, ClassNotFoundException, java.io.IOException {
    }

    void choix6(String assosciation) throws SQLException, ClassNotFoundException, java.io.IOException {
    }
}