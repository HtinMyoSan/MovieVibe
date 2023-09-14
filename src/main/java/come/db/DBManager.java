package come.db;
import java.sql.*;
public class DBManager {
	public Connection connector() throws ClassNotFoundException, SQLException {
		Connection c =null;
		Class.forName("com.mysql.cj.jdbc.Driver");
		String url= "jdbc:mysql://localhost:3306/movie_vibe";
		String userName="root";
		String pass="12345";
		c = DriverManager.getConnection(url,userName,pass);
		return c;
	}
	
	public static void main(String[] args) {
		DBManager dbm = new DBManager();
		try {
			dbm.connector();
			System.out.print("Successfully Connected");
		}
		catch(ClassNotFoundException | SQLException e) {
			e.printStackTrace();
			
		}
	}

}
