package gbc.assignment.connection;

import java.sql.Connection;
import java.sql.DriverManager;



public class DatabaseAccess {
	  private static Connection connect = null;
	  
	  public static Connection connectDataBase() throws Exception {
		  String username = "root";;
		  String password = "rootqwer";
		  String database = "COMP3095";
	    try {
	      // This will load the MySQL driver, each DB has its own driver
	      Class.forName("com.mysql.jdbc.Driver");
	      // Setup the connection with the DB
	      connect = DriverManager
		          .getConnection("jdbc:mysql://localhost:3306/"+database+"?"
		              + "user="+username+"&password="+password);
	      return connect;
	    } catch (Exception e) {
	      throw e;
	    } 
	  }
}
