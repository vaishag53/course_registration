<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>LM | Signup</title>
	<link rel="icon" type="image/x-icon" href="imgs/LM.png">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/fontawesome.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
	<script src="js/jq.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/popper.min.js"></script>
</head>
<body>
	<!-----------------------NAVBAR------------------------>
	<div class="navbar navbar-expand-md navbar-collapse navbar-dark fixed-top">
		<div class="container">
			<a href="index.jsp" class="navbar-brand">LearnMore</a>
			<div class="collapse navbar-collapse" id="navbar">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a href="index.jsp" class="nav-link">Home</a></li>
					<li class="nav-item"><a href="#" class="nav-link active disabled">Signup</a></li>
				</ul>
			</div>
		</div>
		<button class="navbar-toggler navbar-toggler-right" type="button" data-target="#navbar" data-toggle="collapse">
			<span class="navbar-toggler-icon"></span>
		</button>
	</div>
<!-----------------------END OF NAVBAR------------------------>
<!----------------------SignUP------------------------>
	<div class="container" style="margin-top: 70px">
		<div class="row">
			<div class="col-md-6 offset-md-3 col-sm-12">
					<h2 class="text-center">Signup</h2>
		      		<form action="Signup" method="post" id="signup">
		     	    	<div class="form-group">
		            		<label for="name" class="col-form-label">Name<i>&#42;</i></label>
		            		<input type="text" class="form-control" name="uname" required placeholder="Type your UserName">
		          		</div>
		          		<div class="form-group">
				            <label for="email" class="col-form-label">Email<i>&#42;</i></label>
				           	<input type="email" class="form-control" name="email" required placeholder="Type your Email">
				        </div>
				        <div class="form-group">
				            <label for="no" class="col-form-label">Phone No<i>&#42;</i></label>
				           	<input type="text" class="form-control" name="no" required placeholder="Type your Phone Number">
				        </div>
				        <div class="form-group">
				            <label for="pass" class="col-form-label">Password<i>&#42;</i></label>
				           	<input type="Password" class="form-control" name="pass" required placeholder="Type your Password">
				        </div>
				        <div class="form-group">
				            <label for="repass" class="col-form-label">Retype Password<i>&#42;</i></label>
				           	<input type="Password" class="form-control" name="repass" required placeholder="Re-type your Password">
				        </div>
				        <div class="form-group text-center my-3">
				        	<% if(request.getParameter("error") != null){
				        			String error = request.getParameter("error");
				        			if(error.equals("phone")){
				        				out.println("<p class='error'>Enter a valid Phone Number!</p>");
				        			}else if(error.equals("password")){
				        				out.println("<p class='error'>Please check your password</p>");
				        			}else if(error.equals("notunique")){
				        				out.println("<p class='error'>Email is already registered </p>");
				        			}
				        		}						
				        	%>
				        	<button type="submit" class="btn btn-primary" value="signup">Signup</button>
				        </div>    
					</form>
				        <div class="text-center">
				        	<h5>Already have an account?</h5>
				        	<a href="index.jsp"><h5>Login</h5></a>
				        </div>
		      		</div>
	
			</div>
		</div>
<!-----------------------------------------------End of Signup---------------------------->
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