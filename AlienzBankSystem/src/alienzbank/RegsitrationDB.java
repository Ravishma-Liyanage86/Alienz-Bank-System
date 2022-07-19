package alienzbank;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class RegsitrationDB {
	
	//declaring static Variables for connection
	private static Connection myConnect = null;
	private static Statement myStatement = null;
    private static ResultSet myResult = null;
    
    private static String EnNIC;
 
   public static boolean insertCustomerDb(String firstname,String lastname, String birthday,String gender, String address, String NIC,String contactno,String email, String accountNo, String branch, String accounttype, String username, String password) {
	
	    boolean isInsert = false;
	
	   
	    
	    
	    try {
	    
	    	
	    	//calling get database connection method in Database connection class and assign it's value to a a variable 
	        myConnect =DatabaseConnection.getDBConnection();
	    	myStatement = myConnect.createStatement();
	    	
	    	//insert data in to the customer table
	    	String msql = "INSERT INTO customer VALUES (0, '"+firstname+"', '"+lastname+"', '"+birthday+"', '"+gender+"', '"+address+"','"+NIC+"','"+contactno+"', '"+email+"', '"+accountNo+"','"+branch+"' , '"+accounttype+"', '"+username+"','"+password+"')";
	    	
	    	//declare a variable to store the return value of sql query
	    	int Iresult = myStatement.executeUpdate(msql);
	    	
	    	//check whether the data successfully inserted to the table
	    	if(Iresult > 0) {
	    	
	    		isInsert= true;
	    	}
	    	else {
	    	
	    		isInsert = false;
	    	}
	    	
	    }
	    catch(Exception ex) {
	    	ex.printStackTrace();
	    }
	
	  //returning the status of inserting values
	 return isInsert;
     }
   
    
	public static boolean getNic(String enteredNic) {
		EnNIC = enteredNic;
		boolean ci = false;
		try {
			   
			
			 //calling get database connection method in Database connection class and assign it's value to a a variable 
		        myConnect =DatabaseConnection.getDBConnection();
		    	myStatement = myConnect.createStatement();
		    	
		    	String msql = "select *  from customer where  NIC ='"+EnNIC+"'";
			    
		    	ci = myStatement.execute(msql);
		    	
		    	
		    	myConnect.close();	
		   }
		   catch(Exception ex) {
			   ex.printStackTrace();
		   }
		return ci;
	}
   public static List<YouthCustomer> getCustomerDEtails(String cNIC){
	   
	   ArrayList<YouthCustomer> youth = new ArrayList<>();
	   
	   try {
		   
		 //calling get database connection method in Database connection class and assign it's value to a a variable 
	        myConnect =DatabaseConnection.getDBConnection();
	    	myStatement = myConnect.createStatement();
	    	
	    	String msql = "select *  from customer where  NIC ='"+cNIC+"'";
		    
	    	myResult = myStatement.executeQuery(msql);
	    	
	    	while(myResult.next()) {
	    		
	    		int id = myResult.getInt(1);
	    		String  fName     = myResult.getString(2);
	    		String  lname     = myResult.getString(3);
	    		String  dob       = myResult.getString(4);
	    		String  gender    = myResult.getString(5);
	    		String  address   = myResult.getString(6);
	    		String  nic       = myResult.getString(7);
	    		String  phoneno   = myResult.getString(8);
	    		String  email     = myResult.getString(9);
	    		String  acno      = myResult.getString(10);
	    		String  branch    = myResult.getString(11);
	    		String  acType    = myResult.getString(12);
	    		String  uname     = myResult.getString(13);
	    		String  password  = myResult.getString(14);
	    		
	    		YouthCustomer nyc = new YouthCustomer(id, fName, lname, dob, gender, address, nic, phoneno, email, acno, branch, acType, uname, password);
	    		youth.add(nyc);
	    	}
	    	myConnect.close();
	   }
	   catch(Exception ex) {
		   ex.printStackTrace();
	   }
	   
	   return youth;
   }
   
 public static List<YouthCustomer> getLoanDetails(String cNIC){
	   
	   ArrayList<YouthCustomer> eduLoan = new ArrayList<>();
	   
	   try {
		   
		 //calling get database connection method in Database connection class and assign it's value to a a variable 
	        myConnect =DatabaseConnection.getDBConnection();
	    	myStatement = myConnect.createStatement();
	    	
	    	String msql = "select *  from loans where  NIC ='"+cNIC+"'";
		    
	    	myResult = myStatement.executeQuery(msql);
	    	
	    	while(myResult.next()) {
	    	
	    		int loanid = myResult.getInt(1);
	    		String  fullname     = myResult.getString(2);
	    		String  lnic     = myResult.getString(3);
	    		String  accountType      = myResult.getString(4);
	    		String  amount    = myResult.getString(5);
	    		String  time   = myResult.getString(6);
	    		String  institute       = myResult.getString(7);
	    		String  bName   = myResult.getString(8);
	    		String  job    = myResult.getString(9);
	    		String  salary     = myResult.getString(10);
	    		
	    		YouthCustomer nyc = new YouthCustomer(loanid,fullname, lnic, accountType,amount, time,  institute, bName,  job, salary) ;
    	
	    		eduLoan.add(nyc);
	    	}
	    	myConnect.close();
	   }
	   catch(Exception ex) {
		   ex.printStackTrace();
	   }
	   
	   return eduLoan;
   }
   
 //function to update data in database
  public static boolean updateYouthCustomer(String id,String firstname,String lastname, String address, String NIC,String contactno,String email, String username, String password) {
  
	  boolean isUpdate = false;
		
	   
	    
	    
	    try {
	    
	    	
	    	//calling get database connection method in Database connection class and assign it's value to a a variable 
	        myConnect =DatabaseConnection.getDBConnection();
	    	myStatement = myConnect.createStatement();
	    	
	    	//update data in to the customer table
	    	String mysql = "UPDATE customer SET  firstname='"+firstname+"', lastname='"+lastname+"', address='"+address+"', NIC='"+NIC+"',contactno='"+contactno+"', email='"+email+"', username='"+username+"', password='"+password+"' "
	    			     + "where NIC= '"+NIC+"' ";
	    	
	    	//declare a variable to store the return value of update sql query
	    	int result = myStatement.executeUpdate(mysql);
	    	
	    	//check whether the data successfully updated to the table
	    	if(result > 0) {
	    	
	    		isUpdate= true;
	    	}
	    	else {
	    	
	    		isUpdate = false;
	    	}
	    	
	    }
	    catch(Exception ex) {
	    	ex.printStackTrace();
	    }
	
	  //returning the status of updating values
	 return isUpdate;
  
  
  
    }
    public static boolean deleteYouthCustomer(String id ,String nic) {
    	
      int convertId = Integer.parseInt(id);	
      boolean isDelete = false;
		
	   
	    
	    
	    try {
	    
	    	
	    	//calling get database connection method in Database connection class and assign it's value to a a variable 
	        myConnect =DatabaseConnection.getDBConnection();
	    	myStatement = myConnect.createStatement();
	    	
	    	//delete the relevant customer's data in the customer table
	    	String mysql = "DELETE from customer where NIC= '"+nic+"' AND id ='"+convertId+"'";
	    	
	    	
	    	//declare a variable to store the return value of update sql query
	    	int myResult = myStatement.executeUpdate(mysql);
	    	
	    	//check whether the data successfully updated to the table
	    	if(myResult > 0) {
	    	
	    		isDelete= true;
	    	}
	    	else {
	    	
	    		isDelete = false;
	    	}
	    	
	    }
	    catch(Exception ex) {
	    	ex.printStackTrace();
	    }
	
	  //returning the status of updating values
	 return isDelete;
  
    }
    
    
    public static boolean insertLoanDB(String fullname,String nic,String accountType,String amount,String time, String institute,String bName, String job, String salary) {
    	
	    boolean isInsertLoan = false;
	    int Iresult = 0;
	    
	    
	    
	    try {
	    
	    	
	    	//calling get database connection method in Database connection class and assign it's value to a a variable 
	        myConnect =DatabaseConnection.getDBConnection();
	    	myStatement = myConnect.createStatement();
	    	
	    	
	    	//insert data in to the loans table
	    	String mysql = "INSERT INTO loans VALUES (0, '"+fullname+"', '"+nic+"', '"+accountType+"', '"+amount+"', '"+time+"','"+institute+"','"+bName+"', '"+job+"', '"+salary+"')";
	    	
	    	 //declare a variable to store the return value of sql query
	    	 Iresult = myStatement.executeUpdate(mysql);
	    	
	    	//check whether the data successfully inserted to the table
	    	if(Iresult > 0) {
	    	
	    		isInsertLoan= true;
	    	}
	    	else {
	    	
	    		isInsertLoan = false;
	    	}
	    	
	    }
	    catch(Exception ex) {
	    	ex.printStackTrace();
	    }
	
	  //returning the status of inserting values
	  return isInsertLoan;
     }
    public static boolean checkValidity(String nic,String accountType) {
    	
    	boolean check = false;
    	
    	try {
			   
			
			    //calling get database connection method in Database connection class and assign it's value to a a variable 
		        myConnect =DatabaseConnection.getDBConnection();
		    	myStatement = myConnect.createStatement();
		    	
		    	
		    	//Check whether that customer successfully registered and have a youth type bank account
		    	String msql = "select accounttype from customer where  NIC ='"+nic+"' and accounttype= 'youth' ";
		    	myResult = myStatement.executeQuery(msql);
		    
		    	
		    	
		    	if( myResult.next()) {
		    		
		    		check = true;
		    	}
		    	else
		    	{
		    		check=false;
		    	}
		    	
		   }
		   catch(Exception ex) {
			   ex.printStackTrace();
		   }
		return check;
    }
  }

		