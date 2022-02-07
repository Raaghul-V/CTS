package com.cts.bo;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cts.vo.User;

import co.cts.dao.UserDAOImple;
@WebServlet("/UserCreation")
public class UserBO extends HttpServlet {
	// Servlet code
	private static final long serialVersionUID = 1L;
    public UserBO() {
        super();
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		out.print("<head> <title> </title> </head> <body>");
		try
		{
			// values are returned
			int result=0;
			String firstName=request.getParameter("firstName");
			String lastName=request.getParameter("lastName");
			String gender=request.getParameter("gender");
			String email=request.getParameter("email");
			long contactNumber=Long.parseLong(request.getParameter("contactNumber"));
			long custId=Long.parseLong(request.getParameter("CustomerId"));
			String password=request.getParameter("password");

			User u=new User();
			// values are set
			u.setFirstName(firstName);
			u.setLastName(lastName);
			u.setGender(gender);
			u.setEmail(email);
			u.setContactNumber(contactNumber);
			u.setCustomerId(custId);
			u.setPassword(password);
			
			UserDAOImple udo=new UserDAOImple();
			result=udo.insertion(u);
			if(result==1)
			{
				// if inserted
				RequestDispatcher rd=request.getRequestDispatcher("UserRegistration.jsp");
				out.print("User details inserted successfully");
				rd.include(request,response);
			}
			else
			{	
				// if not inserted
				out.print("Failed to add details");
				RequestDispatcher rd=request.getRequestDispatcher("UserRegistration.jsp");
				rd.forward(request, response);
				
			}
			
		}
		catch(Exception ex)
		{
			RequestDispatcher rd=request.getRequestDispatcher("index.html");
			rd.include(request, response);
		}
		out.print("</body> </html>");
	}

}
