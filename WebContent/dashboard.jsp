<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="include\connection.jsp" %>
    <%@ include file="include\courses.jsp" %>
    <%@ include file="include\details.jsp" %>    
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>LM | Dashboard</title>
	<link rel="icon" type="image/x-icon" href="imgs/LM.png">
	<link rel="stylesheet" type="text/css" href="css/all.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
	<script src="js/jq.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/popper.min.js"></script>
</head>
<body>
	<!-----------------------Modals------------------------>
	<div id="removed" class="modal fade" role="dialog">
		<div class="modal-dialog modal-dialog-centered modal-sm" role="content">
			<div class="modal-content ">
	            <div class="modal-header" >
	                <h6 class="modal-title">Course has been Removed..</h6>
	                <button type="button" class="close" data-dismiss="modal">&times;</button>
	            </div>
	        </div>
		</div>
	</div>
	<%if(request.getParameter("action") != null){
        	if(request.getParameter("action").equals("removed"))
        	{
        		out.println("<script>$('#removed').modal({backdrop:true});</script>");
        	}
    	}
    %>
<!-----------------------END OF Modals------------------------>
	
  <!-----------------------NAVBAR------------------------>
	<div class="navbar navbar-expand-md navbar-collapse navbar-dark">
		  <a class="navbar-brand" href="index.jsp">LearnMore</a>
		  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar">
		    <span class="navbar-toggler-icon"></span>
		  </button>
		  <div class="navbar-collapse collapse justify-content-end" id="navbar">
		        <ul class="nav navbar-nav ">
		          <li class="nav-item"><a href="index.jsp" class="nav-link"><i class="fas fa-home"></i>Home</a></li>
			      <li class="nav-item"><a class="nav-link active" href="#"><i class="fas fa-user"></i> Welcome <% out.println(session.getAttribute("uname"));%></a></li>			      		       
			      <li class="nav-item"><a class="nav-link" href="logout.jsp"><i class="fas fa-power-off"></i> Logout</a></li>
			    </ul>
		  </div>
	</div>
  <!-----------------------END OF NAVBAR------------------------>
  <!-----------------------DASHBOARD------------------------>
  <div class="container pt-3">
  	<div class="row">
  		<div class="col-md-6">
  			<h1 class="text-primary"><i class="fas fa-user"></i>User Profile</h1>
  			<%
			Connection conn = getConnection();
			if(session.getAttribute("uid") != null){
				int uid = Integer.parseInt(session.getAttribute("uid").toString());
				PreparedStatement ps = conn.prepareStatement("select * from users where userid ="+uid);
				ResultSet r = ps.executeQuery();
				r.next();
				out.println(user(r.getString("username"),r.getString("email"),r.getString("phone")));
				//ps = conn.prepareStatement("select * from users where userid ="+uid);
			}
			conn.close();
		%>	
  		</div>
  		<div class="col-md-6">
  			<h1 class="text-primary"><i class="fas fa-user"></i>More Details</h1>
  				<%
			     conn = getConnection();
			     if(session.getAttribute("uid") != null){
					int uid = Integer.parseInt(session.getAttribute("uid").toString());
					PreparedStatement ps = conn.prepareStatement("select count(*) from userextra where userid ="+uid);
					ResultSet r = ps.executeQuery();
					r.next();
					if(r.getInt("count(*)") == 0){
						
						out.println(extraForm(uid));
					}else{
						ps = conn.prepareStatement("select * from userextra where userid ="+uid);
						r = ps.executeQuery();
						r.next();
						out.println(extra(r.getString("dob"),r.getString("college"),r.getString("degree")));		
					}
					
				}
			conn.close();
		%>	
  		</div>
  	</div>
  </div>
  <div class="container">
  	<h1 class="text-primary">My Courses</h1>
  	<%
			Connection con = getConnection();
			if(session.getAttribute("uid") != null){
				int id = Integer.parseInt(session.getAttribute("uid").toString());
				PreparedStatement ps = con.prepareStatement("select u"+id+" from usercourses where u"+id+" is not null");
				ResultSet rs = ps.executeQuery();
				while(rs.next())
				{	
					int cid = rs.getInt("u"+id);
					ps = con.prepareStatement("select * from courses where courseid="+cid);
					ResultSet r = ps.executeQuery();
					r.next();
					out.println(dashcourse(r.getString("coursename"),r.getString("desc"),r.getString("imgs"),r.getString("extras"),r.getInt("courseid"),id));							
				 }
			}
			con.close();
		%>
  </div>
  <!-----------------------END OF DASHBOARD------------------------>
  <!-----------------------Footer------------------------>
	<div class="footer bg-color py-3 mb-0">
		<div class="container text-center ">
			<h3>&copy;All rights reserved by Learn More</h3>
			<h6><i class="fas fa-phone"></i> : 9787537739</h6>
			<h6><i class="fas fa-envelope"></i> : learnmore@hotmail.com</h6>
		</div>
	</div>
	<!-----------------------End of Footer------------------------>
</body>
</html>