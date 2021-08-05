import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import db.Insert;


@WebServlet("/Remove")
public class Remove extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
    public Remove() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int uid = Integer.parseInt((request.getParameter("uid")));
		int cid = Integer.parseInt(request.getParameter("cid"));
		try {
			if(Insert.removeCourse(cid, uid) == 1){
				response.sendRedirect("dashboard.jsp?action=removed");	
			}else {
				response.sendRedirect("dashboard.jsp?action=sqlerror");
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
