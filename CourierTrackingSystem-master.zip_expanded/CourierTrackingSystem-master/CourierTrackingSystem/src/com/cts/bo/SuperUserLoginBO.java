package com.cts.bo;

import java.io.IOException;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import co.cts.dao.SuperUserDAO;

@WebServlet("/SULoginValidation")
public class SuperUserLoginBO extends HttpServlet {
	// Servlet code to validate superUser login credentials
	private static final long serialVersionUID = 1L;
    public SuperUserLoginBO() {
        super();
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		// Website sends data to servlet
		
		try
		{
		String email=(String)(request.getParameter("email"));
		String password=request.getParameter("password");
				
		HttpSession s=request.getSession(true);

		SuperUserDAO suv=new SuperUserDAO();
		// Function checks superUser credentials in database and returns 1 if matched correctly
		int result=suv.suValidation(email, password);
		
		if(result==1)
		{
			// if credentials matched, it redirects to superUser Homepage
			s.setAttribute("ref",email);
			System.out.println(new Date(s.getCreationTime()));
			System.out.println(new Date(s.getLastAccessedTime()));
			RequestDispatcher rd=request.getRequestDispatcher("superuserHome.jsp");
			rd.forward(request, response);
		}
		else
		{
			// if credentials didnot match it gets redirected to main homepage
			RequestDispatcher rd=request.getRequestDispatcher("index.html");
			rd.include(request, response);
			
		}
		}
		catch(Exception ex)
		{
			RequestDispatcher rd=request.getRequestDispatcher("index.html");
			rd.include(request, response);
		}

	}

}
