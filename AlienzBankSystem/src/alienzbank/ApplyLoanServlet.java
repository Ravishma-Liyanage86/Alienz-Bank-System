package alienzbank;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


 
@WebServlet("/ApplyLoanServlet")
public class ApplyLoanServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String  fullName     = request.getParameter("fullname");
		String  nic          = request.getParameter("NIC");
		String  accountType  = request.getParameter("atype");
		String  amount       = request.getParameter("amount");
		String  time         = request.getParameter("time");
		String  institute    = request.getParameter("institute");
		String  bName        = request.getParameter("name");
		String  job          = request.getParameter("job");
		String  salary       = request.getParameter("Salary");
		
		boolean result = false;
        boolean checkValidity;
        checkValidity = RegsitrationDB.checkValidity(nic, accountType);
		//getting the return value for checking whether the data inserted successfully or not
        if(checkValidity == true) {
		  
		     result = RegsitrationDB.insertLoanDB(fullName, nic, accountType, amount, time, institute, bName, job, salary);
		 
		    //if data inserted to the customer table
			RequestDispatcher myDisk = request.getRequestDispatcher("LoanSuccess.jsp");
			myDisk.forward(request, response);
        }
		   
        
        else if(checkValidity == false) {
        	RequestDispatcher wrongL = request.getRequestDispatcher("wrongAccount.jsp");
			wrongL.forward(request, response);
        }
        
		  else {
			
			RequestDispatcher wrongL = request.getRequestDispatcher("RegInvalidjsp.jsp");
			wrongL.forward(request, response);
			
		  }
		   
        
        }
       
	

}
