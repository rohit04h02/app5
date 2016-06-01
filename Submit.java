import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.sql.*;
public class Submit extends HttpServlet
{
	public void service(HttpServletRequest req,HttpServletResponse res)throws IOException,ServletException
	{
		res.setContentType("text/html");
		PrintWriter out=res.getWriter();
		HttpSession session=req.getSession(false);
		if(session!=null)
		{
			res.setHeader("Refresh","1;submit.jsp");
		}
		else
		{
			RequestDispatcher rd=req.getRequestDispatcher("/index.jsp");
			rd.forward(req,res);
		}
	}
	
	
}