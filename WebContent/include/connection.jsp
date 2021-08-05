<%@page
	import = "java.sql.*"%>
<%!
	Connection getConnection() throws SQLException, ClassNotFoundException{
	String user = "root";
	String pass = "root";
	String db = "learnmore";
	String url = "jdbc:mysql://@localhost:3306/"+db;
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn =  DriverManager.getConnection(url,user,pass);
	return conn;
	}
%>	