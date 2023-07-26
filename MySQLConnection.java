package con;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class MySQLConnection {

	static Connection connection;

	static{
		 // Create a connection to MySQL
		 
		 try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/root", "root", "root");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        
	} 

	public static void allorder(){
		try{
			Statement statement = connection.createStatement();
       ResultSet rs= statement.executeQuery("select * from kk.order");

	   while(rs.next()){
		System.out.println(rs.getString("row id"));
		System.out.println(rs.getString("order_date"));
		System.out.println(rs.getString("sales"));}
		
	   }
	   catch(SQLException e){
		e.printStackTrace();
	   }

	  
	}
	
	//logincheck
	public static String checkUser(String id, String pass){
		String name;
		 try{
		 Statement statement = connection.createStatement();
       ResultSet rs= statement.executeQuery("select * from quer.user where username='"+id+"' and password='"+pass+"'");
	   
	   if(rs.next()) {
			name=rs.getString(2);
		   return name;
	   }
		 }catch(Exception e){}
	   return null;
	}
	
	
	//registeruser
	
	public static boolean registerUser(String username, String pass, String name, String email){
		 int row_effect=0;
		 try{
		 Statement statement = connection.createStatement();
       row_effect= statement.executeUpdate("insert into quer.user (username, password, name, email) VALUES ('"+username+"', '"+pass+"', '"+name+"', '"+email+"')");
	   
		}catch(Exception e){}
		 
		System.out.println(row_effect);
	   if(row_effect==0) {
		   return false;
	   } 
		 
	   return true;
	}

	//get username
	public static ResultSet selectQ(String str){
		ResultSet rs=null;
		try{
		Statement statement = connection.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);

       	 rs= statement.executeQuery(str);
	   
		}
		catch(Exception e){}
		return rs;
	}
	

}