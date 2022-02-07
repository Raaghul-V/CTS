package com.cts.bo;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cts.vo.Package;

import co.cts.dao.PackageDAOImple;

@WebServlet("/PackageUpdation")
public class PackageUPO extends HttpServlet {
	// Servlet Code
	private static final long serialVersionUID = 1L;
    public PackageUPO() {
        super();
      
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException

	{
		try
		{
			// Values are returned
		String currentLocation=request.getParameter("currentLocation");
		String packageStatus=request.getParameter("packageStatus");
		String employeeId=(request.getParameter("employeeId"));
		String cosignmentId=(request.getParameter("consignmentId"));
		String currentDate=request.getParameter("currentDate");
		String type=request.getParameter("type");
		Package p=new Package();
		// Values are set
		p.setCurrentLocation(currentLocation);
		p.setPackageStatus(packageStatus);
		p.setCosignmentId(cosignmentId);
		p.setEmployeeId(employeeId);
		p.setCurrentDate(currentDate);
		p.setType(type);
		PackageDAOImple pdp=new PackageDAOImple();
		int result=pdp.updation(p);
		if(result==1)
		{
			RequestDispatcher rd=request.getRequestDispatcher("package.jsp");
			rd.forward(request, response);
		}
		else
		{
			RequestDispatcher rd=request.getRequestDispatcher("updatepackage.jsp");
			rd.forward(request, response);
		}
		}catch(Exception e)
		{
			RequestDispatcher rd=request.getRequestDispatcher("index.html");
			rd.include(request, response);
		}
	}

}
