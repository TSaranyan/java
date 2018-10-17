package thirikkale.util.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


/**
 * This class is responsible for getting the DB connection
 * 
 * @author samantha
 *
 */
public class ConnectionManager {

	private static Connection con;

	private static String url;

	public static Connection getConnection() {

		try {
			String url = "jdbc:mysql://localhost/thirikkale?";
			Class.forName("com.mysql.jdbc.Driver");

			try {
				con = DriverManager.getConnection(url, "root", "root");
			}
			catch (SQLException ex) {
				System.out.println("Error while connecting to theDB. Error message: " + ex.getMessage());
			}
		}

		catch (ClassNotFoundException e) {
			System.out.println("Error while connecting to theDB. Error message: " + e.getMessage());
		}

		return con;
	}
}

