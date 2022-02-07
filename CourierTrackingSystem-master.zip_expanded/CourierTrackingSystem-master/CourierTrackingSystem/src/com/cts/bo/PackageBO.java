package com.cts.bo;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cts.vo.Package;

import co.cts.dao.PackageDAOImple;

@WebServlet("/PackageInsertion")
public class PackageBO extends HttpServlet {
	// Servlet code
	private static final long serialVersionUID = 1L;
    public PackageBO() {
        super();
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		out.print("<head> <title> </title> </head> <body>");
		
		// SQL for Taable Creation
		
//		CREATE TABLE package(consignmentId VARCHAR(10),
//				acceptDate VARCHAR(50),packageWeight VARCHAR(50),
//				cost VARCHAR(50),senderAddress VARCHAR(50),
//				receiverAddress VARCHAR(50),distance VARCHAR(10),
//				employeeId VARCHAR(50),customerId VARCHAR(50),
//				type VARCHAR(50),currentLocation VARCHAR(50),packageStatus VARCHAR(50));

	
		try
		{
			// Values are returned 
			String consignmentId=request.getParameter("consignmentId");
			String acceptDate=request.getParameter("acceptDate");
			String packageWeight=request.getParameter("packageWeight");
			String cost=request.getParameter("cost");
			String senderAddress=request.getParameter("senderAddress");
			String receiverAddress=request.getParameter("receiverAddress");
			String distance=(request.getParameter("distance"));
			
			String employeeId=(request.getParameter("employeeId"));
			String customerId=(request.getParameter("customerId"));
			
			String type=request.getParameter("type");
			
//			String currentLocation=request.getParameter("currentLocation");
//			String packageStatus=request.getParameter("packageStatus");
//			
			Package p=new Package();
			// Values are set
			p.setCosignmentId(consignmentId);
			p.setAcceptDate(acceptDate);
			p.setPackageWeight(packageWeight);
			p.setCost(cost);
			p.setSenderAddress(senderAddress);
			p.setReceiverAddress(receiverAddress);
			p.setEmployeeId(employeeId);
			p.setCustomerId(customerId);
			p.setDistance(distance);
			p.setType(type);
			
			p.setCurrentLocation(senderAddress);
			p.setPackageStatus("Booked");
			p.setCurrentDate(acceptDate);
		
			PackageDAOImple pdo=new PackageDAOImple();
			int result=pdo.insertion(p);
			if(result==1)
			{
				out.print("<h2> Successfully Insereted<h2>");
			}
			else
			{
				//if not inserted
				out.print("<h2>Not Successfully Insereted<h2>");
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


