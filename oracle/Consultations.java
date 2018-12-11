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

    void choix1(String association) throws SQLException, ClassNotFoundException, java.io.IOException {
        ods = new OracleDataSource();
        ods.setUser("jsandri");
        ods.setPassword("jsandri");
        ods.setURL("jdbc:oracle:thin:@localhost:1521/oracle");

        conn = null;
        stmt = null;

	ResultSet rset = null;

        try {
            conn = ods.getConnection();
            stmt = conn.createStatement();
            rset = stmt.executeQuery("select NOM_PERSONNE, PRENOM_PERSONNE from PERSONNES natural join ADHERENTS natural join ADHESIONS natural join ASSOCIATIONS where NOM_ASSOCIATION = '" + association + "'");

            while (rset.next()) { // Affichage du resultat.
		System.out.println(rset.getString(2) + rset.getString(1));
            }
        } finally {
            closeBase();
        }
    }

    void choix2(String association, String date) throws SQLException, ClassNotFoundException, java.io.IOException {
        ods = new OracleDataSource();
        ods.setUser("jsandri");
        ods.setPassword("jsandri");
        ods.setURL("jdbc:oracle:thin:@localhost:1521/oracle");

        conn = null;
        stmt = null;

        try {
            conn = ods.getConnection();
            stmt = conn.createStatement();
            ResultSet rset = stmt.executeQuery("select NOM_PERSONNE, PRENOM_PERSONNE from PERSONNES natural join ADHERENTS natural join ADHESIONS natural join ASSOCIATIONS where NOM_ASSOCIATION = '" + association + "' and DATE_ADHESION > '" + date + "'");

            while (rset.next()) { // Affichage du resultat.
                System.out.println(rset.getString(2) + rset.getString(1));
            }
        } finally {
            closeBase();
        }
    }

    void choix3(String association, String date) throws SQLException, ClassNotFoundException, java.io.IOException {
        ods = new OracleDataSource();
        ods.setUser("jsandri");
        ods.setPassword("jsandri");
        ods.setURL("jdbc:oracle:thin:@localhost:1521/oracle");

        conn = null;
        stmt = null;

        try {
            conn = ods.getConnection();
            stmt = conn.createStatement();
            ResultSet rset = stmt.executeQuery("select NOM_PERSONNE, PRENOM_PERSONNE from PERSONNES natural join ADHERENTS natural join ADHESIONS natural join ASSOCIATIONS where NOM_ASSOCIATION = '" + association + "' and DATE_ADHESION > '" + date + "' and COTISATION_ADHERENT = 0");

            while (rset.next()) { // Affichage du resultat.
                System.out.println(rset.getString(2) + rset.getString(1));
            }
        } finally {
            closeBase();
        }
    }

    void choix4(String evenement) throws SQLException, ClassNotFoundException, java.io.IOException {
        ods = new OracleDataSource();
        ods.setUser("jsandri");
        ods.setPassword("jsandri");
        ods.setURL("jdbc:oracle:thin:@localhost:1521/oracle");

        conn = null;
        stmt = null;

        try {
            conn = ods.getConnection();
            stmt = conn.createStatement();
            ResultSet rset = stmt.executeQuery("select NOM_PERSONNE, PRENOM_PERSONNE from PERSONNES natural join PARTICIPATIONS natural join EVENEMENTS where TITRE = '" + evenement + "'");

            while (rset.next()) { // Affichage du resultat.
                System.out.println(rset.getString(2) + rset.getString(1));
            }
        } finally {
            closeBase();
        }
    }

    void choix5(String evenement) throws SQLException, ClassNotFoundException, java.io.IOException {
        ods = new OracleDataSource();
        ods.setUser("jsandri");
        ods.setPassword("jsandri");
        ods.setURL("jdbc:oracle:thin:@localhost:1521/oracle");

        conn = null;
        stmt = null;

        try {
            conn = ods.getConnection();
            stmt = conn.createStatement();
            ResultSet rset = stmt.executeQuery("select NOM_PERSONNE, PRENOM_PERSONNE from PERSONNES natural join ADHERENTS natural join GESTIONS natural join EVENEMENTS where TITRE = '" + evenement + "'");

            while (rset.next()) { // Affichage du resultat.
                System.out.println(rset.getString(2) + rset.getString(1));
            }
        } finally {
            closeBase();
        }
    }

    void choix6(String news) throws SQLException, ClassNotFoundException, java.io.IOException {
        ods = new OracleDataSource();
        ods.setUser("jsandri");
        ods.setPassword("jsandri");
        ods.setURL("jdbc:oracle:thin:@localhost:1521/oracle");

        conn = null;
        stmt = null;

        try {
            conn = ods.getConnection();
            stmt = conn.createStatement();
            ResultSet rset = stmt.executeQuery("select TITRE_NEWS, count(*) as NOMBRE from NEWS join COMMENTAIRES on NEWS.NUMERO_NEWS = COMMENTAIRES.NUMERO_NEWS where TITRE_NEWS = '" + news + "' group by TITRE_NEWS");

            while (rset.next()) { // Affichage du resultat.
                System.out.println(rset.getString(2));
            }
        } finally {
            closeBase();
        }
    }
}
