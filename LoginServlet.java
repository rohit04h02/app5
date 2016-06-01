import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;

public class LoginServlet extends HttpServlet
{
	public void service(HttpServletRequest req, HttpServletResponse res)throws IOException,ServletException
	{
		String userId=req.getParameter("userId");
		String pass=req.getParameter("pass");
		res.setContentType("text/html");
		PrintWriter out=res.getWriter();
		try{
			HttpSession session=req.getSession();
			session.setAttribute("userId",userId);
			session.setAttribute("pass",pass);
			HttpServletResponse rss=(HttpServletResponse)res;
			rss.setHeader("Refresh","1;welcome.jsp");
		}
		catch(Exception e)
			{
			out.println(e);
			}
	}
}