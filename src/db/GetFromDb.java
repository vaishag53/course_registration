package db;
import java.sql.*;

public class GetFromDb {
	public static Connection conn;
	public static String login(String username, String password) throws ClassNotFoundException, SQLException {
		conn = Connect.getConnecton();
		PreparedStatement ps = conn.prepareStatement("select * from users where username=?");
		ps.setString(1, username);
		ResultSet rs = ps.executeQuery();
		while(rs.next())
		{
			if(username.equals(rs.getString("username"))) {
				if(password.equals(rs.getString("password"))){
					return "login=success&id="+rs.getInt("userid")+"&name="+rs.getString("username");
				}else{
					return "error=password";
				}
			}		
		}
		return "error=nouser";
	}
}
