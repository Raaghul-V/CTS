package com.cts.bo;

import javax.servlet.http.HttpServlet;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cts.util.Db;

/**
 * Servlet implementation class UpdateUserOffer
 */
@WebServlet("/UpdateUserOffer")
public class UpdateUserOffer extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UpdateUserOffer() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		RequestDispatcher rd=request.getRequestDispatcher("useracceptdeclineoffer.jsp");
		
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		out.print("<head> <title> </title> <head> <body>");
		String customerId = request.getParameter("customerId");
		String update = request.getParameter("update");
		int result=0;

		try {
			// in website if user selects accepted, this code runs and updates in database , quotation tabole as accepted
			if (update.contentEquals("accepted")) {
				PreparedStatement pst = Db.getDb().prepareStatement(
						"update Quotation set useracceptance='accepted' where customerId='" + customerId + "';");
				result=pst.executeUpdate();
				out.print("<h2>Successfully Accepted<h2>");
			}
			// in website if user selects rejected, this code runs and updates in database, quotation table as rejected
			else if(update.contentEquals("rejected")) {
				PreparedStatement pst = Db.getDb().prepareStatement(
						"update Quotation set useracceptance='rejected' where customerId='" + customerId + "';");
				result=pst.executeUpdate();
				out.print("<h2>Successfully Rejected<h2>");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println(e);
		}
		
		
		if(result==1) {
			// displays the below message in new webpage if successfully inserted
			out.print("<h2>Successfully Inserted<h2>");
			rd.forward(request, response);
			
		}
		out.print("</body> </html>");

	}

}
