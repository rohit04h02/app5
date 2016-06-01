import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.sql.*;


public class LogoutServlet extends HttpServlet
{
	ServletContext ctx=null;
	public void service(HttpServletRequest req,HttpServletResponse res)throws IOException,ServletException
	{
		res.setContentType("text/html");
		PrintWriter out=res.getWriter();
		HttpSession session=req.getSession(false);
		String uid=(String)session.getAttribute("userId");
		ctx=getServletContext();
		if(session!=null)
		{
		try
			{
				//String uid=(String)session.getAttribute("userId");
				Connection c=(Connection)ctx.getAttribute("con");
				Statement s=c.createStatement();
				int x=s.executeUpdate("update cust set loginStatus='f' where userId='"+uid+"'");
				out.println("<html><body><h1>"+uid+" Logged Out Successfully");
				res.setHeader("Refresh","1;index.jsp");
				session.invalidate();

			}
		catch(Exception e)
		{
			out.println(e);
		}
		
	}
	else
	{		out.println("<html><body><h1>"+uid+" Logged Out Successfully");
			res.setHeader("Refresh","1;index.jsp");
	}
}
}