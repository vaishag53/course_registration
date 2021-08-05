import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import db.Insert;

@WebServlet("/Add")
public class Add extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Add() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int uid = Integer.parseInt((request.getParameter("uid")));
		int cid = Integer.parseInt(request.getParameter("cid"));
		try {
			if(Insert.addToCourses(cid, uid) == 1){
				response.sendRedirect("index.jsp?action=added");	
			}else {
				response.sendRedirect("index.jsp?action=already");
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
