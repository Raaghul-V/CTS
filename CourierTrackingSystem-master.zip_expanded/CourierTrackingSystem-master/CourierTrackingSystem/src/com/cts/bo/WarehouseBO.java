package com.cts.bo;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cts.vo.Warehouse;

import co.cts.dao.WarehouseDAOImple;

@WebServlet("/WarehouseBO")
public class WarehouseBO extends HttpServlet {
	// Servlet Code
	private static final long serialVersionUID = 1L;
       
    public WarehouseBO() {
        super();
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		out.print("<head> <title> </title> <head> <body>");
	
		int flag=0;
		try
		{
			String branchId=request.getParameter("branchId");

			String branchName=request.getParameter("branchName");
			
			String branchLocation=request.getParameter("branchLocation");
			
			String contactNo=request.getParameter("contactNo");
			
			RequestDispatcher rd=request.getRequestDispatcher("warehouse.jsp");
				
				if(branchId.equals("") || branchId==null) {
					out.println("BranchID is required<br>");
					flag=1;
				}
				if(branchName.equals("") || branchName==null) {
					out.println("Branch Name is required<br>");
					flag=1;
				}
				if(branchLocation.equals("") || branchLocation==null) {
					out.println("Branch Location is required<br>");
					flag=1;
				}
				if(contactNo.equals("") || contactNo==null) {
					out.println("Contact Number is required<br>");
					flag=1;
				}
			
			Warehouse w=new Warehouse();
			w.setBranchId(branchId);
			w.setBranchName(branchName);
			w.setBranchLocation(branchLocation);
			w.setContactNo(contactNo);
			WarehouseDAOImple wdo=new WarehouseDAOImple();
			
			int result=wdo.warehouseValidation(w);
			if(flag!=1 && result==1)
			{
				//we have to say inserted status in this page
				out.print("<h2>Details already added<h2>");
			}
			else if(flag!=1 && result!=1)
			{	
				int r=wdo.warehouseInsertion(w);
				if(r==1) {
				//we have to say inserted status in this page
				out.print("<h2> Warehouse Details Successfully Inserted<h2>");
			}
			else
			{
				//if not inserted
				
				out.print("<h2>Not Successfully Inserted<h2>");
				rd.forward(request, response);
			}
				
		}
			rd.include(request, response);
		}
		catch(Exception ex)
		{
			RequestDispatcher rd=request.getRequestDispatcher("index.html");
			rd.include(request, response);
			
		}
		out.print("</body> </html>");
	}
	}

