package com.cts.bo;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cts.vo.User;

import co.cts.dao.UserDAOImple;

@WebServlet("/UserLoginBOValidation")
public class UserLoginBO extends HttpServlet {
	// servlet code
	private static final long serialVersionUID = 1L;
    public UserLoginBO() {
        super();
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		// Login details of user are taken as input
		try
		{
		String email=(String)(request.getParameter("email"));
		String password=request.getParameter("password");
				
		HttpSession s=request.getSession(true);
		User u=new User();
		u.setEmail(email);
		u.setPassword(password);
		UserDAOImple udo=new UserDAOImple();
		int result=udo.validation(u);
		
		// reponse given based on DAO result
		if(result==1)
		{
			s.setAttribute("ref",email);
			//System.out.println(new Date(s.getCreationTime()));
			//System.out.println(new Date(s.getLastAccessedTime()));
			RequestDispatcher rd=request.getRequestDispatcher("userHome.jsp");
			rd.forward(request, response);
		}
		else
		{
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
