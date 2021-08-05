package db;

import java.sql.*;

public class Insert  {
	static Connection conn;
	public static String register(String name,String email, String pass,String phone ) throws ClassNotFoundException, SQLException{
		String msg = "";
		conn = Connect.getConnecton();
		String sql = "select count(*) from users where email=\""+email+"\"";
		Statement st = conn.createStatement();
		ResultSet rs = st.executeQuery(sql);
		rs.next();
		if(rs.getInt("count(*)") == 0){
			PreparedStatement ps = conn.prepareStatement("insert into users(username,email,password,phone) values(?,?,?,?)");
			ps.setString(1, name);
			ps.setString(2, email);
			ps.setString(3, pass);
			ps.setString(4, phone);
			ps.execute();
			rs = st.executeQuery("select userid from users where email=\""+email+"\"");
			rs.next();
			int id = rs.getInt("userid");
			st.execute("ALTER TABLE usercourses \r\n"
					+ "ADD COLUMN u"+id+" INT NULL UNIQUE \r\n");
			msg = "signup=success";
		}else {
			msg = "error=notunique";
		}
		conn.close();
		return msg;
	}
	public static int addToCourses(int cid,int uid) throws ClassNotFoundException{
		try{
			Connection conn = Connect.getConnecton();
			PreparedStatement ps = conn.prepareStatement("insert into usercourses(u"+uid+") values(?)");
			ps.setInt(1,cid);
			ps.execute();
			conn.close();
			return 1;
		}
		catch(SQLException e){
			return  0;	
		}	
	}
	public static int removeCourse(int cid,int uid) throws ClassNotFoundException{
		try{
			Connection conn = Connect.getConnecton();
			PreparedStatement ps = conn.prepareStatement("UPDATE usercourses SET u"+uid+" = NULL WHERE u"+uid+" = "+cid);
			ps.execute();
			conn.close();
			return 1;
		}
		catch(SQLException e){
			System.out.println(e);;	
		}
		return 0;	
	}
	public static int addExtra(int uid,String college,String deg,String dob) throws ClassNotFoundException{
		try{
			Connection conn = Connect.getConnecton();
			PreparedStatement ps = conn.prepareStatement("insert into userextra values(?,?,?,?)");
			ps.setInt(1,uid);
			ps.setString(2,college);
			ps.setString(3,deg);
			ps.setString(4,dob);
			ps.execute();
			conn.close();
			return 1;
		}
		catch(SQLException e){
			return  0;	
		}	
	}
}
