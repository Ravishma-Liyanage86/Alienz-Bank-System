package alienzbank;

import java.sql.Connection;
import java.sql.DriverManager;

public class DatabaseConnection {
	//declaring variables statically to access from all methods 
	private static String url = "jdbc:mysql://localhost:3306/alienzbank";
    private static String username = "root";
    private static String password =  "MkT7892*";
    private static Connection myConnect;
    
    public static Connection getDBConnection() {
    	
    	try {
    		//registering the driver
    		Class.forName("com.mysql.jdbc.Driver");
    		
    		myConnect =DriverManager.getConnection(url, username, password);
    		
    	}
    	catch(Exception ex) {
    		//displaying an error message if database not connected
    		System.out.println("Database is not connected!!!");
    	}
    	//returning the connection's parameters if it is connected successfully
    	return myConnect;
    	
    }
    
}

