package com.cts.bo;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.PreparedStatement;

import com.cts.util.Db;

/**
 * Servlet implementation class updateOfferBO
 */
@WebServlet("/updateOffer")
public class updateOfferBO extends HttpServlet {
	// Srevlet to collect data from website and update in database quotation table
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public updateOfferBO() {
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
		
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		out.print("<head> <title> </title> <head> <body>");
	
		int flag=0;
		try
		{
			String type=request.getParameter("type");

			String offerdate=request.getParameter("offerdate");
			
			String distance=request.getParameter("distance");
			
			String cost=request.getParameter("cost");
			
			String customerId=request.getParameter("customerId");
			
			String expdelivdate=request.getParameter("expdelivdate");
			
			String weight=request.getParameter("packageWeight");
			
			RequestDispatcher rd=request.getRequestDispatcher("userOffer.jsp");
				
			// if any field is left blank, flag is assigned to 1
				if(type.equals("") || type==null) {
					out.println("Package type is required<br>");
					flag=1;
				}
				if(offerdate.equals("") || offerdate==null) {
					out.println("Enter offer date<br>");
					flag=1;
				}
				if(distance.equals("") || distance==null) {
					out.println("Distance of transit is required<br>");
					flag=1;
				}
				if(cost.equals("") || cost==null) {
					out.println("Cost is required<br>");
					flag=1;
				}
				if(expdelivdate.equals("") || expdelivdate==null) {
					out.println("Expected deilvery date is required<br>");
					flag=1;
				}
			
			int result=0;
			
			// inserts offer details given by admin in quotation table of database
			PreparedStatement pst=Db.getDb().prepareStatement(
					"update quotation set packageWeight='"+weight+"', offerDate='"+offerdate+"', distance='"+distance+"', cost='"+cost+"', type='"+type+"', expectedDeiveryDate='"+expdelivdate+"' "
					+"where customerId='"+customerId+"' ;"
					//+"update quotation set type='"+type+"' where customerId='"+customerId+"');"
					);
					//packageWeight, senderAddress, receiverAddress, customerId, type, QuoteDate, offerDate, distance, cost, expectedDeiveryDate
			result=pst.executeUpdate();
			if(flag!=1 && result==1)
			{
				//we have to say inserted status in this page
				out.print("<h2>Offer Details Successfully Inserted<h2>");
			}
			else if(flag!=1 && result!=1)
			{	
				//we have to say inserted status in this page
				out.print("<h2> Offer Details already added<h2>");
			}
			else
			{
				//if not inserted
				
				out.print("<h2>Not Successfully Inserted<h2>");
				rd.forward(request, response);
			}
				
		}
		catch(Exception ex)
		{
			System.out.println(ex);
			RequestDispatcher rd=request.getRequestDispatcher("index.html");
			rd.include(request, response);
			
		}
		out.print("</body> </html>");
	
	}

}
