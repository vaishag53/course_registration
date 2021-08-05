import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import db.Insert;


@WebServlet("/Dashboard")
public class Dashboard extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
    public Dashboard() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String dob =  request.getParameter("dob");
		String college =  request.getParameter("college");
		String deg =  request.getParameter("degree");
		int id = Integer.parseInt(request.getParameter("id"));
		try {
			Insert.addExtra(id, college, deg, dob);
			response.sendRedirect("dashboard.jsp");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
