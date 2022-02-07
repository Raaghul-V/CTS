package co.cts.dao;

import java.sql.PreparedStatement;

import com.cts.util.Db;
import com.cts.vo.Package;


public class PackageDAOImple implements PackageDAO
{

	// Method for inserting package details into database
	@Override
	public int insertion(Package p) {
		int result=0,flag=0;
		try
			{
			// Creating database connection adn executing the query
			PreparedStatement pst=Db.getDb().prepareStatement(
					"insert into package(consignmentId,acceptDate,packageWeight,cost,senderAddress,receiverAddress,distance,employeeId,customerId,type,currentLocation,packageStatus,currentDate) values('"
			+p.getCosignmentId()+"','"+p.getAcceptDate()+"','"+p.getPackageWeight()+"','"+p.getCost()+"','"+p.getSenderAddress()+"','"+p.getReceiverAddress()+"','"
			+p.getDistance()+"','"+p.getEmployeeId()+"','"+p.getCustomerId()+"','"+p.getType()+"','"+p.getCurrentLocation()+"','"+p.getPackageStatus()+"','"+p.getCurrentDate()+"');");
			
			result=pst.executeUpdate();
			}
			catch(Exception ex)
			{
				flag=1;
				System.out.println(ex);
			}
		if(flag!=1) {
			result=1;
			return result;
			}
		else {
			result=0;
			return result;			
		}
	}

	@Override
	/*public ArrayList<Package> viewAll()
	{
		
		//int result=0;
 
		ArrayList<Package> al=new ArrayList<>();
		try	
		{
			PreparedStatement pst=Db.getDb().prepareStatement("select * from package");
			ResultSet rs=pst.executeQuery();
			while(rs.next())
			{
				Package q=new Package(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getLong(7),rs.getLong(8),rs.getString(9),rs.getString(10));
				al.add(q);
			}
			
			
		}
		catch(Exception ex)
		{
			System.out.println(ex);
		}
		
		return al;
	}*/

	// Method for updating package details in database
	public int updation(Package p) {
		int result=0;
		try
			{
			// Creating database connection and executing the query
			PreparedStatement pst=Db.getDb().prepareStatement("update package set employeeId='"+p.getEmployeeId()+"' , currentLocation='"
			+p.getCurrentLocation()+"', packageStatus='"+p.getPackageStatus()+"', currentDate='"+p.getCurrentDate()+"', type='"+p.getType()
			+"' where consignmentId='"+p.getCosignmentId()+"';");
			result=pst.executeUpdate();
			}
			catch(Exception ex)
			{
				System.out.println(ex);
			}
			return result;
	}
	
	// Method for saving the quotation details in database
	public int saveQuotation(Package p) {
		int result=0;
		
		try
		{
			// Creating database connection nad executing the query statement
		PreparedStatement pst=Db.getDb().prepareStatement(
				"insert into Quotation(packageWeight,senderAddress,receiverAddress,customerId,type,QuoteDate) values('"
						+p.getPackageWeight()+"','"+p.getSenderAddress()+"','"+p.getReceiverAddress()+"','"+p.getCustomerId()+"','"+p.getType()+"','"+p.getAcceptDate()+"');");
						
		result=pst.executeUpdate();
		}
		catch(Exception ex)
		{
			System.out.println(ex);
		}
		return result;
	}
}
		
	

