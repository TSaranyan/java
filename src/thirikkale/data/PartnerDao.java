package thirikkale.data;

import java.util.ArrayList;
import java.util.List;

import thirikkale.model.Partner;
import thirikkale.util.db.DBHelper;
import thirikkale.util.db.SQLStatements;

public class PartnerDao {


	public static String createPartner(Partner partner) throws Exception {

		String createPartner = SQLStatements.CREATE_PARTNER;
		DBHelper helper = null;
		try {
			helper = new DBHelper();
			List<Object> dataToInsert = new ArrayList<Object>();
			dataToInsert.add(partner.getName());
			dataToInsert.add(partner.getEmail());
			dataToInsert.add(partner.getPassword());
			dataToInsert.add(partner.getPhoneNo1());
			dataToInsert.add(partner.getPhoneNo2());
			dataToInsert.add(partner.getPhoneNo3());
			return helper.executeStatementByReturningKey(createPartner, dataToInsert);

		}
		catch (Exception ex) {
			System.out.println("Error while executing " + createPartner + " For the user : " + partner.getEmail() + " Error message: " + ex.getMessage());
			throw ex;
		}
		finally {
			if (helper != null) {
				helper.clean();
			}
		}

	}
	
	public static boolean isPartnerExist(Partner partner) throws Exception {

		String selectPartner = SQLStatements.SELECT_PARTNER;
		DBHelper helper = null;
		try {
			helper = new DBHelper();
			List<Object> dataToWhereClause = new ArrayList<Object>();
			dataToWhereClause.add(partner.getEmail());
			return helper.executeStatement(selectPartner, dataToWhereClause) != null;
		}
		catch (Exception ex) {
			System.out.println("Error while executing " + selectPartner + " For the user : " + partner.getEmail()
					+ " Error message: " + ex.getMessage());
			throw ex;
		}
		finally {
			if (helper != null) {
				helper.clean();
			}
		}

	}
}
