package co.cts.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.cts.util.Db;
import com.cts.vo.User;

public class UserDAOImple implements UserDAO{
 
	int result=0;
	
	// Method for Inserting user details in database
	@Override
	public int insertion(User u) {
		
		
		try
		{
			// Creating database connection and executing the query
			PreparedStatement pst=Db.getDb().prepareStatement("insert into user(firstName,lastName,gender,email,contactNumber,customerId,password) values('"+u.getFirstName()+"','"+u.getLastName()+"','"+u.getGender()+"','"+u.getEmail()+"','"+u.getContactNumber()+"','"+u.getCustomerId()+"','"+u.getPassword()+"');");
			result=pst.executeUpdate();
		}
		catch(Exception ex)
		{
			System.out.println(ex);
		}
		return result;
		
	}
	
	// Method for validating user details for login
	public int validation(User u) {
	
		try
		{
			// Creating database connection and executing the query
			PreparedStatement pst=Db.getDb().prepareStatement("select * from user");
			ResultSet rs=pst.executeQuery();
			while(rs.next())
			{
				if(u.getEmail().equals(rs.getString(4)) && u.getPassword().equals(rs.getString(7)))
				{
					result=1;
				}
					
			}
		}catch(Exception e)
		{
			System.err.println(e);
		}
		return result;
	}
	
	
	

}
