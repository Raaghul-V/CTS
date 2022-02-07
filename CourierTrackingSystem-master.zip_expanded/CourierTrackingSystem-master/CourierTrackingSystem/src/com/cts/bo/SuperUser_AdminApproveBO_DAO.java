package com.cts.bo;

import com.cts.util.Db;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.*;
import java.sql.*;

@WebServlet("/SuperUser_AdminApprovereq")
public class SuperUser_AdminApproveBO_DAO extends HttpServlet {
	private static final long serialVersionUID = 1L;

	String apst,fn;
	String[] firstName=new String[100];
	int i=0;

	public SuperUser_AdminApproveBO_DAO() {
		super();
	}

	// Servlet gets data from DataBase and displays on webpage
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// Creates a new webpage
		PrintWriter out = res.getWriter();
		res.setContentType("text/html");
		out.println("<html><body>");
		try {
			// filters unapproved admins from database
			PreparedStatement pst = Db.getDb().prepareStatement(
					"select firstName,lastName,gender,email,designation,approved from staff where logintype='A' and approved='pending';");
			ResultSet rs = pst.executeQuery();

			// creates a table to display admin details for superUser
			i=0;
			out.println("<table border=1 width=50% height=50%>");
			out.println(
					"<tr><th>firstName</th> <th>lastName</th> <th>Gender</th> <th>email</th> <th>designation</th> <th>Approve Status</th> <th>Update Status</th> </tr> ");
			while (rs.next()) {
				fn=rs.getString("firstName");
				String ln = rs.getString("lastName");
				String gen = rs.getString("gender");
				String email = rs.getString("email");
				String des = rs.getString("designation");
				apst = rs.getString("approved");

				out.println("<tr><td>" + fn + "</td><td>" + ln + "</td><td>" + gen + "</td><td>" + email + "</td><td>"
						+ des + "</td><td>" + apst + "</td>" + "<td>" + "<form action='SuperUser_AdminApprovereq' method='post'><select name='update' id='update'/><option value='approve'>approve</option>"
								+ "<option value='reject'>reject</option></td>"
						
						);
				
				firstName[i]=fn;
				++i;

			}
			out.println("</table>"
					+"<input type='submit' id='a' value='update permission'/></form>"+"</html></body>");
			

		} catch (Exception e) {
			out.println("error");
			e.printStackTrace();
		}

	}

	// website sends data to servlet
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PreparedStatement prst1;

		try {
			int i=0;

			String[] app = request.getParameterValues("update");

			for (i = 0; i < app.length; i++) {

				System.out.println(app[i]);

				if (app[i].equals("approve")) {
					// If superUser selects approve, in database for that admin it gets updated to approved
					prst1 = Db.getDb().prepareStatement(
							"update staff set approved='approved' where logintype='A' and firstname='" + firstName[i] + "'");

					prst1.executeUpdate();

				}

				else if (app[i].equals("reject")) {
					// If superUser selects reject, in database for that admin it gets updated to rejected and he can not login
					prst1 = Db.getDb().prepareStatement(
							"update staff set approved='rejected' where logintype='A' and firstname='" + firstName[i] + "'");

					prst1.executeUpdate();

				}

			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		out.println("updated successfully");		

	}
		
}
