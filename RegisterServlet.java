import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;

public class RegisterServlet extends HttpServlet
{
	public void service(HttpServletRequest req, HttpServletResponse res)throws IOException,ServletException
	{
		
		res.setContentType("text/html");
		PrintWriter out=res.getWriter();
		out.println("<html><body><br><h1>User Already Exist---Try Again</h1>");
		out.println("<br><h2>Index page Reloading...Please Wait</h2></body></html>");
		res.setHeader("Refresh","1;register.jsp");
	}
}