package business;

import java.sql.*;

class MysqlCon {
	public static void main(String args[]) {
		try {
			Class.forName("com.mysql.jdbc.Driver");

			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Premium", "root", "");
			// Premium is the database name, 'root' is the username and 'admin' is the password.
			Statement stmt = conn.createStatement();

			ResultSet rs = stmt.executeQuery("select * from booking");

			while (rs.next())
				System.out.println(rs.getString(1) + "  " + rs.getString(2) + "  " + rs.getString(3) + "  "
						+ rs.getString(4) + "  " + rs.getString(5)+"  " +rs.getString(6) + "  " + rs.getString(7) + "  " + rs.getString(8));

			

		} catch (Exception e) {
			System.out.println(e);
		}

	}
}