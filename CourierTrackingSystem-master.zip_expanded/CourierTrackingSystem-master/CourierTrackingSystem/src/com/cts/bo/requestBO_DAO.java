package com.cts.bo;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cts.util.Db;


@WebServlet("/request")
public class requestBO_DAO extends HttpServlet {
	// Servlet Code
	private static final long serialVersionUID = 1L;

	public requestBO_DAO() {
		super();
	}

	String apst, fn;
	String[] firstName = new String[100];
	int i = 0;

	protected void doGet(HttpServletRequest request, HttpServletResponse res) throws ServletException, IOException {
		// Admin request is Accepted or Rejected
		PrintWriter out = res.getWriter();
		res.setContentType("text/html");
		out.println("<html><body>");
		try {
			PreparedStatement pst = Db.getDb().prepareStatement(
					"select firstName,lastName,gender,email,designation,approved from staff where logintype='S' and approved!='approved'");
			ResultSet rs = pst.executeQuery();
			
			// SQL for Staff Table Creation

			// CREATE TABLE staff(firstName VARCHAR(50), lastName VARCHAR(50),
			// gender VARCHAR(50), email VARCHAR(50),contactNumber VARCHAR(50),
			// password VARCHAR(50),salary VARCHAR(50),designation VARCHAR(50),
			// correpondanceAddress VARCHAR(50),loginType VARCHAR(50));

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
						+ des + "</td><td>" + apst + "</td>" + "<td>" + "<form action='request' method='post'><select name='update' id='update'/><option value='approve'>approve</option>"
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

	protected void doPost(HttpServletRequest request, HttpServletResponse res) throws ServletException, IOException {
		// Updating Staff request for registration
		PrintWriter out = res.getWriter();
		res.setContentType("text/html");
		
		PreparedStatement prst1;

		try {
			int i=0;

			String[] app = request.getParameterValues("update");

			for (i = 0; i < app.length; i++) {

				System.out.println(app[i]);

				if (app[i].equals("approve")) {
					prst1 = Db.getDb().prepareStatement(
							"update staff set approved='approved' where logintype='S' and firstname='" + firstName[i] + "'");

					prst1.executeUpdate();

				}

				else if (app[i].equals("reject")) {
					prst1 = Db.getDb().prepareStatement(
							"update staff set approved='rejected' where logintype='S' and firstname='" + firstName[i] + "'");

					prst1.executeUpdate();

				}
				
	}
		}catch (Exception e) {
			out.println("error");
			e.printStackTrace();
		}
		
		out.println("updated successfully");
	}
}


