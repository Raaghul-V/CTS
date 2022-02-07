package co.cts.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.cts.util.Db;

// Method for validating the super user details for login
public class SuperUserDAO {
	
	int result=0;

	public int suValidation(String email, String password)
	{
		try
		{
			PreparedStatement pst=Db.getDb().prepareStatement("select * from staff where logintype='SU'");
			ResultSet rs=pst.executeQuery();
			while(rs.next())
			{
				if(email.equals(rs.getString(4)) && password.equals(rs.getString(7)) )
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
