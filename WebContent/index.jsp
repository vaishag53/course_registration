<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="include\courses.jsp" %>
<%@ include file="include\connection.jsp" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>LM | Home</title>
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
	<div id="success" class="modal fade" role="dialog">
		<div class="modal-dialog modal-dialog-centered modal-sm" role="content">
			<div class="modal-content ">
	            <div class="modal-header" >
	                <h6 class="modal-title">Login successfull..</h6>
	                <button type="button" class="close" data-dismiss="modal">&times;</button>
	            </div>
	        </div>
		</div>
	</div>
	<div id="already" class="modal fade" role="dialog">
		<div class="modal-dialog modal-dialog-centered modal-sm" role="content">
			<div class="modal-content ">
	            <div class="modal-header" >
	                <h6 class="modal-title">Course is already in your profile..</h6>
	                <button type="button" class="close" data-dismiss="modal">&times;</button>
	            </div>
	        </div>
		</div>
	</div>
	<div id="added" class="modal fade" role="dialog">
		<div class="modal-dialog modal-dialog-centered modal-sm" role="content">
			<div class="modal-content ">
	            <div class="modal-header" >
	                <h6 class="modal-title">Course has been added..</h6>
	                <button type="button" class="close" data-dismiss="modal">&times;</button>
	            </div>
	        </div>
		</div>
	</div>
	<div id="signed" class="modal fade" role="dialog">
		<div class="modal-dialog modal-dialog-centered modal-sm" role="content">
			<div class="modal-content">
	            <div class="modal-header" style=" border:0;">
	                <center><h6 class="modal-title">Account created successfully..</h6></center>
	                <button type="button" class="close" data-dismiss="modal">&times;</button>
	            </div>
	        </div>
		</div>
	</div>
	<div id="logout" class="modal fade" role="dialog">
		<div class="modal-dialog modal-dialog-centered modal-sm" role="content">
			<div class="modal-content">
	            <div class="modal-header" style=" border:0;">
	                <center><h6 class="modal-title">You have been loged out..</h6></center>
	                <button type="button" class="close" data-dismiss="modal">&times;</button>
	            </div>
	        </div>
		</div>
	</div>
	<div id="loginfirst" class="modal fade" role="dialog">
		<div class="modal-dialog modal-dialog-centered modal-sm" role="content">
			<div class="modal-content">
	            <div class="modal-header" style=" border:0;">
	                <center><h6 class="modal-title">Please login to continue..</h6></center>
	                <button type="button" class="close" data-dismiss="modal">&times;</button>
	            </div>
	        </div>
		</div>
	</div>
	<div class="modal fade" id="login" tabindex="-1" role="dialog" >
			<div class="modal-dialog" role="content">
			    <div class="modal-content">
			    	<div class="modal-header">
			        	<h5 class="modal-title">Login</h5>
			        	<button type="button" class="close" data-dismiss="modal">&times;</button>
			      	</div>
			      	<form action="Login" method="post">
			      		<div class="modal-body">
			     	        <div class="form-group">
			            		<label for="uname" class="col-form-label">UserName<i>&#42;</i></label>
			            		<input type="text" class="form-control text-center" name="uname" required>
			          		</div>
					        <div class="form-group">
					            <label for="pass" class="col-form-label">Password<i>&#42;</i></label>
					           	<input type="Password" class="form-control text-center" name="pass" required>
					        </div>
					        <div class="form-group mt-2 text-center">
					        <% if(request.getParameter("login") != null){
						        	if(request.getParameter("login").equals("success"))
						        	{
						        		out.println("<script>$('#success').modal({backdrop:true});</script>");
						        	}
					        	}
					        	else if(request.getParameter("error") != null)
					        	{
							    	String error = request.getParameter("error");
							        if(error.equals("nouser"))
							        {
							        	out.println("<p class='error'>No user found!</p>");
							        	out.println("<script>$('#login').modal({backdrop:true});</script>");
							        }
							        else if(error.equals("password"))
							        {
							        	out.println("<p class='error'>Please check your password</p>");
							        	out.println("<script>$('#login').modal({backdrop:true});</script>");
							   		}
						        }
				        	%>
					        	<button type="submit" class="btn btn-primary ">Login</button>
					        </div>
					        <div class="text-center">
					        	<h5>Don't have an account?</h5>
					        	<a href="signup.jsp" ><h5>Signup</h5></a>
					        </div>
			      		</div>
			  		</form>
				</div>
			</div>
		</div>
		<% 
		if(request.getParameter("signup") != null){
        	if(request.getParameter("signup").equals("success"))
        	{
        		out.println("<script>$('#signed').modal({backdrop:true});</script>");
        	}
    	}
		if(request.getParameter("logout") != null){
        	if(request.getParameter("logout").equals("success"))
        	{
        		out.println("<script>$('#logout').modal({backdrop:true});</script>");
        	}
    	}
		if(request.getParameter("login") != null){
        	if(request.getParameter("login").equals("success"))
        	{
        		int id = Integer.parseInt(request.getParameter("id"));
        		String uname = request.getParameter("name");
        		session.setAttribute("uid", id);
        		session.setAttribute("uname", uname);
        		out.println("<script>$('#success').modal({backdrop:true});</script>");
        	}
    	}
		%>
	<!-----------------------END OF Modals------------------------>	
	<!-----------------------NAVBAR------------------------>
		<div class="navbar navbar-expand-md navbar-collapse navbar-dark fixed-top">
			<div class="container">
				<a href="#" class="navbar-brand">LearnMore</a>
				<div class="collapse navbar-collapse" id="navbar">
					<ul class="navbar-nav ml-auto">
						<li class="nav-item"><a href="#" class="nav-link active"><i class="fas fa-home"></i>Home</a></li>
						<%
							if(session.getAttribute("uid") !=null)
							{
								out.println("<li class=\"nav-item\"><a href=\"dashboard.jsp\" class=\"nav-link\"><i class=\"fa fa-user\"></i>Profile</a></li>");
								out.println("<li class=\"nav-item\"><a href=\"logout.jsp\" class=\"nav-link\"><i class=\"fas fa-power-off\"></i>Logout</a></li>");
							}
							else{
								out.println("<li class=\"nav-item\"><a data-target=\"#login\" data-toggle=\"modal\" data-backdrop=\"static\" class=\"nav-link\">Login</a></li>");
							}
						%>
						
					</ul>
				</div>
			</div>
			<button class="navbar-toggler navbar-toggler-right" type="button" data-target="#navbar" data-toggle="collapse">
				<span class="navbar-toggler-icon"></span>
			</button>
		</div>
	<!-----------------------END OF NAVBAR------------------------>
	<!-----------------------TOP BUTTON  ------------------------>
		<button type="button" onclick="topfunction()" id="top" title="Go to top" class="btn btn-sm bg-secondary"><span class="fa fa-arrow-up "></span></button>
		<script type="text/javascript">
	      window.onscroll = function()
	      {
	        scrollFunction()
	      };
	      function scrollFunction(){
	        if (document.body.scrollTop > 50 || document.documentElement.scrollTop > 50) {
	          document.getElementById("top").style.display = "block";
	        } else {
	          document.getElementById("top").style.display = "none";
	        }
	      }
	
	      function topfunction() {
	        document.body.scrollTop = 0;
	        document.documentElement.scrollTop = 0;
	      }
	  </script>
	<!-----------------------End of Top Button------------------------>
	<!------------------------Carousel-------------------------------->
		<div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="1500" style="margin-top: 45px">
			<div class="carousel-inner" role="listbox">
				<div class="carousel-item active">
					<img src="imgs/slide1.jpg" class="img-fluid" style="width:100%;">
					<div class="carousel-caption"></div>				
				</div>
				<div class="carousel-item ">
					<img src="imgs/slide2.jpg" class="img-fluid" style="width:100%;">
					<div class="carousel-caption"></div>				
				</div>
				<div class="carousel-item">
					<img src="imgs/slide3.jpg" class="img-fluid" style="width:100%;">
					<div class="carousel-caption"></div>				
				</div>
			</div>
			<ol class="carousel-indicators">
				<li data-targer="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-targer="#myCarousel" data-slide-to="1"></li>
				<li data-targer="#myCarousel" data-slide-to="2"></li>
			</ol>
			<a class="carousel-control-prev" href="#myCarousel"  role="button" data-slide="prev">
				<span class="carousel-control-prev-icon"></span>
			</a>
			<a class="carousel-control-next" href="#myCarousel"  role="button" data-slide="next">
				<span class="carousel-control-next-icon"></span>
			</a>
		</div>
	<!-----------------------End of Carousel------------------------> 
	<!-----------------------Jumbatron------------------------> 
		<div class="jumbotron">
			<div class="container text-center">
				<h1>Learn More</h1>
				<h1>Grow More With Us</h1>
			</div>
		</div>
	<!-----------------------End of JUmbatron------------------------>
	<!-----------------------Courses------------------------>
	<div class="container">
		<h1 class="text-center">Our Courses</h1>
		<%
			Connection conn = getConnection();
			PreparedStatement ps = conn.prepareStatement("select * from courses");
			if(session.getAttribute("uid") != null){
				int uid = Integer.parseInt(session.getAttribute("uid").toString());
				ResultSet rs = ps.executeQuery();
				while(rs.next())
				{
				 	out.println(coursesdb(rs.getString("coursename"),rs.getString("desc"),rs.getString("imgs"),rs.getString("extras"),rs.getInt("courseid"),uid));			
				 }
			}else{
				ResultSet rs = ps.executeQuery();
				while(rs.next())
				{
				 	out.println(courses(rs.getString("coursename"),rs.getString("desc"),rs.getString("imgs"),rs.getString("extras"),rs.getInt("courseid")));			
				 }
			conn.close();
			}
			
		%>
		<%
			if(request.getParameter("action") != null)
			{
				if(request.getParameter("action").equals("added")){
					out.println("<script>$('#added').modal({backdrop:true});</script>");	
				}else if(request.getParameter("action").equals("already")){
					out.println("<script>$('#already').modal({backdrop:true});</script>");	
				}
					
			}
			
		%>
	</div>
	<!-----------------------End of Courses------------------------>
	<!-----------------------Footer------------------------>
	<div class="footer bg-color py-3 mb-0">
		<div class="container text-center ">
			<h3>&copy;All rights reserved by Learn More</h3>
			<h6><i class="fas fa-phone"></i> : 9787537739</h6>
			<h6><i class="fas fa-envelope"></i> : growmore@hotmail.com</h6>
		</div>
	</div>
	<!-----------------------End of Footer------------------------>   	
</body>
</html>