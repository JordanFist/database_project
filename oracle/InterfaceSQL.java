import java.sql.*;
import oracle.jdbc.pool.OracleDataSource;
import java.util.Scanner;
import java.util.concurrent.ExecutionException;

public class InterfaceSQL {
	public Scanner sc;

	public Consultations consultations;
	// public static Statistiques statistiques = new Statistiques();
	// public static MiseAJour miseAJour = new MiseAJour();

	public InterfaceSQL() {
		sc = new Scanner(System.in);
		consultations = new Consultations();
	}

	void bienvenue() {
		System.out.println("Bonjour");
		System.out.println("Bienvenue sur l'interface de la base Associations");
		System.out.println(
				"Rentrer dans la console les numéros à gauche du message pour rentrer dans le domaine voulu\n");
	}

	void typeDeRecherche() {
		System.out.println("Quel type de recherche voulez-vous faire sur votre base ?");
		System.out.println("1. Consultations");
		System.out.println("2. Statistiques");
		System.out.println("3. Mise à jour");
		System.out.println("4. Quitter l'interface");
		String reponse = sc.nextLine();
		if (reponse.equals("1"))
			consultations();
		if (reponse.equals("2"))
			statistiques();
		if (reponse.equals("3"))
			miseAJour();
		if (reponse.equals("4"))
			quitter();
	}

	void consultations() {
		System.out.println("\nVoici les types de consultations disponibles");
		System.out.println("1. La liste des adhérents à une association");
		System.out.println("2. La liste des adhérents à une association à une date donnée");
		System.out.println("3. La liste des adhérents qui n'ont pas cotisé à une association à une date donnée");
		System.out.println("4. La liste des personnes participant à un évènement");
		System.out.println("5. La liste des personnes organisant un évènement");
		System.out.println("6. Savoir le nombre de commentaires postés pour une news");
		System.out.println("7. Retour");

		String reponse = sc.nextLine();
		String date;
		if (reponse.equals("1")) {
			System.out.println("\nPour quelle association ?");
			reponse = sc.nextLine();
			try {
				consultations.choix1(reponse);
			} catch (Exception e) {
				erreur();
			}
			consultations();
		}
		if (reponse.equals("2")) {
			System.out.println("\nPour quelle association ?");
			reponse = sc.nextLine();
			System.out.println("Pour quelle date ?");
			date = sc.nextLine();
			try {
				consultations.choix2(reponse, date);
			} catch (Exception e) {
				erreur();
			}
			consultations();
		}
		if (reponse.equals("3")) {
			System.out.println("\nPour quelle association ?");
			reponse = sc.nextLine();
			System.out.println("Pour quelle date ?");
			date = sc.nextLine();
			try {
				consultations.choix3(reponse, date);
			} catch (Exception e) {
				erreur();
			}
			consultations();
		}
		if (reponse.equals("4")) {
			System.out.println("\nPour quelle évènement ?");
			reponse = sc.nextLine();
			try {
				consultations.choix4(reponse);
			} catch (Exception e) {
				erreur();
			}
			consultations();
		}
		if (reponse.equals("5")) {
			System.out.println("\nPour quelle évènement ?");
			reponse = sc.nextLine();
			try {
				consultations.choix5(reponse);
			} catch (Exception e) {
				erreur();
			}
			consultations();
		}
		if (reponse.equals("6")) {
			System.out.println("\nPour quel commentaire ?");
			reponse = sc.nextLine();
			try {
				consultations.choix6(reponse);
			} catch (Exception e) {
				erreur();
			}
			consultations();
		}
		if (reponse.equals("7"))
			typeDeRecherche();
	}

	void statistiques() {
	}

	void miseAJour() {
	}

	void quitter() {
		System.exit(0);
	}

	void erreur() {
		System.out.println("La requete est fausse ou erreur de connexion à la base");
		System.exit(1);
	}

	public static void main(String[] args) throws SQLException, ClassNotFoundException, java.io.IOException {
		InterfaceSQL interfaceSql = new InterfaceSQL();
		interfaceSql.bienvenue();
		interfaceSql.typeDeRecherche();
	}
}
