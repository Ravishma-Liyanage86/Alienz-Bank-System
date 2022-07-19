package alienzbank;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DeleteYouthServlet")
public class DeleteYouthServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String  id        = request.getParameter("id");
		
		String  nic       = request.getParameter("nic");
		
		
		//getting the return value after checking whether customer's NIC is in the table
		boolean results  ;
		results= RegsitrationDB.deleteYouthCustomer(id, nic);
		if(results == true) {
			

			//if data inserted to the customer table
			RequestDispatcher myDispatch = request.getRequestDispatcher("registration.jsp");
			myDispatch.forward(request, response);
		}
		else {
			
			List<YouthCustomer> youthDetails = RegsitrationDB.getCustomerDEtails(nic);
			request.setAttribute("youthDetails", youthDetails);
			
			RequestDispatcher myDispatch = request.getRequestDispatcher("YouthProfile.jsp.");
			myDispatch.forward(request, response);
		}
	}

	

}
