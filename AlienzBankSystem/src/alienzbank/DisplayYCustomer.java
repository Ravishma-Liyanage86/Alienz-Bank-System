package alienzbank;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DisplayYCustomer")
public class DisplayYCustomer extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			
			String  nic       = request.getParameter("NIC");
			
			//getting the return value for checking whether the data inserted successfully or not
			boolean results  ;
			results= RegsitrationDB.getNic(nic);
			if(results == true) {
				
				List<YouthCustomer> youthDetails = RegsitrationDB.getCustomerDEtails(nic);
				request.setAttribute("youthDetails", youthDetails);
				
				List<YouthCustomer> youthLoanDetails = RegsitrationDB.getLoanDetails(nic);
				request.setAttribute("youthLoanDetails", youthLoanDetails);
				
				//if data inserted to the customer table
				RequestDispatcher myDis = request.getRequestDispatcher("YouthProfile.jsp");
				myDis.forward(request, response);
			}
			else {
				
				RequestDispatcher wrong = request.getRequestDispatcher("RegInvalidjsp.jsp");
				wrong.forward(request, response);
				
			}
		}

	

}
