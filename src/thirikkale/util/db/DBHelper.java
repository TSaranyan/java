/**
 * 
 */
package thirikkale.util.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

/**
 * This class is responsible for executing all the insert/update/delete/select sql statements and
 * returning relevant result sets and cleaning up the resources.
 * 
 * @author samantha
 * 
 */
public class DBHelper {

	private Connection currentCon = null;

	private PreparedStatement stmt = null;

	private ResultSet rs = null;

	public DBHelper() throws SQLException {
		// connect to DB
		currentCon = ConnectionManager.getConnection();

	}
	
	/**
	 * This returns the resultset of the given sql statement (select statement).
	 * 
	 * @param sql The SQL
	 * @return
	 */
	public ResultSet getResultSet(String sql){
		return rs;
	}

	/**
	 * This returns the id of the selected record.
	 * 
	 * @param sql The SQL.
	 * @param preparedStatementFields The field values for the prepared statement according to the order of the fields of the query.
	 * @return 
	 * @throws SQLException 
	 */
	public String executeStatement(String sql, List<Object> preparedStatementFields) throws SQLException {
		stmt = currentCon.prepareStatement(sql);
		int i = 1;
		for (Object data : preparedStatementFields) {
			if (data instanceof String) {
				stmt.setString(i, (String) data);
			}
			i++;
		}
		ResultSet rs = stmt.executeQuery();
		if (rs.next()) {
			return rs.getString(1);
		}
		return null;
	}
	
	/**
	 * This returns the id of the affected record (insert/update/delete record).
	 * 
	 * @param sql The SQL.
	 * @param preparedStatementFields The field values for the prepared statement according to the order of the fields of the query.
	 * @return 
	 * @throws SQLException 
	 */
	public String executeStatementByReturningKey(String sql, List<Object> preparedStatementFields) throws SQLException {
		stmt = currentCon.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
		int i = 1;
		for (Object data : preparedStatementFields) {
			if (data instanceof String) {
				stmt.setString(i, (String) data);
			}
			i++;
		}
		stmt.executeUpdate();
		ResultSet rs = stmt.getGeneratedKeys();
		if (rs.next()) {
			return rs.getString(1);
		}
		return null;
	}
	
	
	/**
	 * This method cleans connection , statement and result set
	 * 
	 */
	public void clean() {
		if (rs != null) {
			try {
				rs.close();
			}
			catch (Exception e) {
				System.out.println("Error while cleaning resultset : " + e.getMessage());
			}
			rs = null;
		}

		if (stmt != null) {
			try {
				stmt.close();
			}
			catch (Exception e) {
				System.out.println("Error while cleaning statement : " + e.getMessage());
			}
			stmt = null;
		}

		if (currentCon != null) {
			try {
				currentCon.close();
			}
			catch (Exception e) {
				System.out.println("Error while cleaning connection : " + e.getMessage());
			}

			currentCon = null;
		}
	}

}
