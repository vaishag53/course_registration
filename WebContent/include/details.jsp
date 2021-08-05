<%!
	String user(String name,String email, String phone){
		String out = "<table class=\"table table-bordered\">"
						+"<tr>"
							+"<td>Name</td>"
							+"<td>"+name+"</td>"
						+"</tr>"
						+"<tr>"
							+"<td>Email</td>"
							+"<td>"+email+"</td>"
						+"</tr>"
						+"<tr>"
							+"<td>Phone</td>"
							+"<td>"+phone+"</td>"
						+"</tr>"
					+"</table>";
		return out;
	}
	
	String extra(String dob,String college, String degree){
		String out = "<table class=\"table table-bordered\">"
						+"<tr>"
							+"<td>DOB</td>"
							+"<td>"+dob+"</td>"
						+"</tr>"
						+"<tr>"
							+"<td>College</td>"
							+"<td>"+college+"</td>"
						+"</tr>"
						+"<tr>"
							+"<td>Studying</td>"
							+"<td>"+degree+"</td>"
						+"</tr>"
					+"</table>";
		return out;
	}
	String extraForm(int uid){
		String out = "<form method=\"post\" action=\"Dashboard\"><table class=\"table table-bordered\">"
						+"<tr>"
							+"<td>DOB</td>"
							+"<td><input type=\"text\" name=\"dob\" required></td>"
						+"</tr>"
						+"<tr>"
							+"<td>College</td>"
							+"<td><input type=\"text\" name=\"college\" required></td>"
						+"</tr>"
						+"<tr>"
							+"<td>Studying</td>"
							+"<td><input type=\"text\" name=\"degree\" required></td>"
						+"</tr><tr><td></td><td><input type=\"hidden\" name=\"id\" value="+uid+"><input  class=\"btn btn-primary\" type=\"submit\" value=\"submit\"></td></tr>"
					+"</table></form>";
		return out;
	}
	

%>