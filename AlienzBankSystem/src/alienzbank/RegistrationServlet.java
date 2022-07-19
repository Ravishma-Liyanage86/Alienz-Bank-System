package alienzbank;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegistrationServlet
 */
@WebServlet("/RegistrationServlet")
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// TODO Auto-generated method stub
			
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
				RequestDispatcher myDisk = request.getRequestDispatcher("RegValid.jsp");
				myDisk.forward(request, response);
			}
			else {
				
				RequestDispatcher wrongR = request.getRequestDispatcher("RegInvalidjsp.jsp");
				wrongR.forward(request, response);
				
			}
		}

	

}
