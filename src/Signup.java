import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import db.Insert;
@WebServlet("/Signup")
public class Signup extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public Signup() {
        super();
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username =  request.getParameter("uname");
		String email =  request.getParameter("email");
		String phone =  request.getParameter("no");
		String pass =  request.getParameter("pass");
		String pass2 =  request.getParameter("repass");
		if(phone.length()==10)
		{
			if(pass.equals(pass2))
			{
				try {
					String msg = Insert.register(username,email,pass,phone);
					if(msg.equals("signup=success"))
					{
						response.sendRedirect("index.jsp?"+msg);
					}else {
						response.sendRedirect("signup.jsp?"+msg);
					}
				} catch (ClassNotFoundException | SQLException e) {
					e.printStackTrace();
				}
			}else {
				response.sendRedirect("signup.jsp?error=password");
			}
		}
		else {
			response.sendRedirect("signup.jsp?error=phone");
		}
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
