package home;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import org.springframework.stereotype.Component;


@Component
public class database_connection {

	static String url="jdbc:mysql://localhost:3306/virtusa";
	static String dbusername="root";
	static String dbpass="premsai2030";
	protected Connection connection;
	protected void database() throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		 connection=DriverManager.getConnection(url,dbusername,dbpass);
		//connection=connection_pool.dataSource().getConnection();
		//System.out.println(connection);
	}
	//local payments data
	public int ok(local_payments_data_model local_payments_data) throws SQLException, ClassNotFoundException {
		database();
		//Connection connection=Hilkaricp.dataSource().getConnection();
		PreparedStatement statement=connection.prepareStatement("INSERT INTO all_payments(Customer_ID,"
				+ "Source_account_number,Target_account_number,Amount_Base_Currency,Amount_Target_Currency,status,time,Target_Currency) VALUES(?,?,?,?,?,?,?,?)");
		statement.setString(1,local_payments_data.Customer_ID);
		statement.setString(2,local_payments_data.Source_account_number);
		statement.setString(3,local_payments_data.Target_account_number);
		statement.setString(4,local_payments_data.Amount_Base_Currency);
		statement.setString(5,local_payments_data.Amount_Base_Currency);
		statement.setString(6,"Successfully Completed");
		Date date=new Date();
		SimpleDateFormat formatter = new SimpleDateFormat("dd-MM-yyyy HH:mm:ss");
		System.out.println();
		//Timestamp time=new Timestamp(0);
		statement.setString(7,formatter.format(date).toString());
		statement.setString(8,"INR");
		int success=statement.executeUpdate();
		statement.close();
		return success;
		
	}
	
	//fetching local payments data
	public ArrayList<String> local_data(local_payments_data_model local_payments_data_model_obj) throws ClassNotFoundException, SQLException{
		database();
		ArrayList<String> data=new ArrayList<String>();
		PreparedStatement statement=connection.prepareStatement("SELECT * From all_payments WHERE Customer_ID='"+local_payments_data_model_obj.Customer_ID +"' ORDER BY id DESC LIMIT 1");
		//PreparedStatement statement=connection.prepareStatement("SELECT * From local_payments WHERE id=22 ");
		ResultSet resultSet=statement.executeQuery();
		resultSet.next();
		    int id=resultSet.getInt("id");
			String name=resultSet.getString("Customer_ID");
	String time=resultSet.getString("time");
			String status=resultSet.getString("status");
			data.add(name);
			data.add(String.valueOf(id));
			data.add(status);
			data.add(time.toString());
			
		resultSet.close();
		statement.close();
		return data;
	}
	
	
	
	//cross border payments
	public int ok1(cross_payment_data_model cross_payment_data_model_obj) throws SQLException, ClassNotFoundException {
		database();
		//Connection connection=Hilkaricp.dataSource().getConnection();
		PreparedStatement statement=connection.prepareStatement("INSERT INTO all_payments(Customer_ID,"
				+ "Source_account_number,Target_account_number,Amount_Base_Currency,Amount_Target_Currency,status,time,Target_Currency) VALUES(?,?,?,?,?,?,?,?)");
		statement.setString(1,cross_payment_data_model_obj.Customer_ID);
		statement.setString(2,cross_payment_data_model_obj.Source_account_number);
		statement.setString(3,cross_payment_data_model_obj.Target_account_number);
		statement.setString(4,cross_payment_data_model_obj.Amount_Base_Currency);
		statement.setString(5,cross_payment_data_model_obj.Amount_Target_Currency);
		statement.setString(6,"Successfully Completed");
		Date date=new Date();
		SimpleDateFormat formatter = new SimpleDateFormat("dd-MM-yyyy HH:mm:ss");
		System.out.println();
		//Timestamp time=new Timestamp(0);
		statement.setString(7,formatter.format(date).toString());
		statement.setString(8,cross_payment_data_model_obj.Target_Currency);
		int success=statement.executeUpdate();
		statement.close();
		return success;
		
	}
	//fetching cross border payments
	public ArrayList<String> cross_data(cross_payment_data_model cross_payment_data_model_obj) throws ClassNotFoundException, SQLException{
		database();
		ArrayList<String> data=new ArrayList<String>();
		PreparedStatement statement=connection.prepareStatement("SELECT * From all_payments WHERE Customer_ID='"+cross_payment_data_model_obj.Customer_ID +"' ORDER BY id DESC LIMIT 1");
		//PreparedStatement statement=connection.prepareStatement("SELECT * From local_payments WHERE id=22 ");
		ResultSet resultSet=statement.executeQuery();
		resultSet.next();
		    int id=resultSet.getInt("id");
			String name=resultSet.getString("Customer_ID");
	String time=resultSet.getString("time");
			String status=resultSet.getString("status");
			data.add(name);
			data.add(String.valueOf(id));
			data.add(status);
			data.add(time.toString());
			
		resultSet.close();
		statement.close();
		return data;
	}
	
	
	
	//fetching the value form data base for payment details
	public ArrayList<String> payment_details(payment_details_data_model payment_details_model_obj) throws SQLException, ClassNotFoundException{
		database();
		ArrayList<String> payment_details=new ArrayList<String>();
		PreparedStatement preparedStatement=connection.prepareStatement("SELECT * FROM all_payments WHERE id="+Integer.parseInt(payment_details_model_obj.Transaction_Reference_Number)+" "
				+ "AND Customer_ID='"+payment_details_model_obj.Customer_ID +"'");
		ResultSet resultSet=preparedStatement.executeQuery();
		resultSet.next();
		String name=resultSet.getString("Customer_ID");
		String id1=String.valueOf(resultSet.getInt("id"));
		String status=resultSet.getString("status");
		payment_details.add(name);
		payment_details.add(status);
		payment_details.add(id1);
		resultSet.close();
		preparedStatement.close();
		return payment_details;
	
		
	}
	
}

