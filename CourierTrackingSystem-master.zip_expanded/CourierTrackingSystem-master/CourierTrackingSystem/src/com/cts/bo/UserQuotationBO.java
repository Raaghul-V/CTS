package com.cts.bo;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpSession;

import java.io.IOException;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cts.vo.Package;

import co.cts.dao.PackageDAOImple;

/**
 * Servlet implementation class UserQuotationBO
 */
@WebServlet("/UserQuotationBO")
public class UserQuotationBO extends HttpServlet {
	// servlet code
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserQuotationBO() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try
		{
			// values are returned
		String weight=(String)(request.getParameter("packageWeight"));
		String senderAddress=request.getParameter("senderAddress");
		String deliverAddress=(String)(request.getParameter("receiverAddress"));
		String customerId=request.getParameter("customerId");
		String type=(String)(request.getParameter("type"));
		String date=request.getParameter("currentDate");
				
		HttpSession s=request.getSession(true);
		
		Package p=new Package();
		// values are set
		p.setPackageWeight(weight);
		p.setSenderAddress(senderAddress);
		p.setReceiverAddress(deliverAddress);
		p.setCustomerId(customerId);
		p.setType(type);
		p.setAcceptDate(date);
		
		PackageDAOImple pdo=new PackageDAOImple();
		int result=pdo.saveQuotation(p);
		
		// based on DAO result, reponse is given
		if(result==1)
		{
			s.setAttribute("ref",customerId);
			System.out.println(new Date(s.getCreationTime()));
			System.out.println(new Date(s.getLastAccessedTime()));
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
