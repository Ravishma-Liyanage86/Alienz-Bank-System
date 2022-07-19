package alienzbank;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateYouthServlet")
public class UpdateYouthServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String  id        = request.getParameter("id");
		String  fName     = request.getParameter("fname");
		String  lname     = request.getParameter("lname");
		String  address   = request.getParameter("address");
		String  nic       = request.getParameter("nic");
		String  phoneno   = request.getParameter("phonenumber");
		String  email     = request.getParameter("email");
		
		String  uname     = request.getParameter("username");
		String  password  = request.getParameter("cpassword");
		
		
		//getting the return value after checking whether customer's NIC is in the table
		boolean results  ;
		results= RegsitrationDB.updateYouthCustomer(id, fName, lname, address, nic, phoneno, email, uname, password);
		if(results == true) {
			

			//if data inserted to the customer table
			RequestDispatcher myDis = request.getRequestDispatcher("UpdateValid.jsp");
			myDis.forward(request, response);
		}
		else {
			
			RequestDispatcher wrong = request.getRequestDispatcher("UpdateInvalid.jsp");
			wrong.forward(request, response);
			
			
		}
	}

}
