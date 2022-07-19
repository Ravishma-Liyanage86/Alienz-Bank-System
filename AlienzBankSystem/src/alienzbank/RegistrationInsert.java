package alienzbank;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;


@WebServlet("/RegistrationInsert")
public class RegistrationInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String  fName     = request.getParameter("fname");
		String  lname     = request.getParameter("lname");
		String  dob       = request.getParameter("birthday");
		String  gender    = request.getParameter("gender");
		String  address   = request.getParameter("address");
		String  nic       = request.getParameter("NIC");
		String  phoneno   = request.getParameter("phonenumber");
		String  email     = request.getParameter("email");
		String  acno      = request.getParameter("accountno");
		String  branch    = request.getParameter("branch");
		String  acType    = request.getParameter("atype");
		String  uname     = request.getParameter("username");
		String  password  = request.getParameter("cpassword");
		
		//getting the return value for checking whether the data inserted successfully or not
		boolean result;
		result =RegsitrationDB.insertCustomerDb(fName, lname, dob, gender, address, nic, phoneno, email, acno, branch, acType, uname, password);
		
		if(result == true) {
			
			//if data inserted to the customer table
			RequestDispatcher myDis = request.getRequestDispatcher("RegValid.jsp");
			myDis.forward(request, response);
		}
		else {
			
			RequestDispatcher wrong = request.getRequestDispatcher("RegInvalidjsp.jsp");
			wrong.forward(request, response);
			
		}
	}

}
