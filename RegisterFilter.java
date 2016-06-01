import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.sql.*;

public class RegisterFilter implements Filter
{
FilterConfig config;

	public void init(FilterConfig config)throws ServletException
	{
	this.config=config;
	}
	
	public void doFilter(ServletRequest req,ServletResponse res,FilterChain chain)throws IOException,ServletException
		{
			String pass=req.getParameter("pass");
			String uid=req.getParameter("userId");
			String repass=req.getParameter("repass");
			String usertype=req.getParameter("usertype");
			PrintWriter out=res.getWriter();	
			if(pass.equals(repass))
			{
				ServletContext ctx=config.getServletContext();
			try{
				
				Connection c=(Connection)ctx.getAttribute("con");
				Statement s=c.createStatement();
				String s1="select * from cust where userId='"+uid+"'"; //and pass='"+pass+"'";
				ResultSet rs=s.executeQuery(s1);
				if(rs.next())
					chain.doFilter(req,res);
				else
				{
				int x=s.executeUpdate("insert into cust values('"+uid+"','"+pass+"','f')");
				out.println("<html><body><br><h1>Registered Successfully</h1></body></html>");
				//RequestDispatcher rd=req.getRequestDispatcher("/registered");
				//rd.forward(req,res);
				HttpServletResponse rss=(HttpServletResponse)res;
				rss.setHeader("Refresh","1;index.jsp");
				}
			}
			 catch(Exception e){}
				 {
			}
			}
			else {
				out.println("<html><body><br><h1>Password and repassword must be same</h1>");
				out.println("<br><h2>Registration Page Reloading</h1></body></html>");
				HttpServletResponse rss=(HttpServletResponse)res;
				rss.setHeader("Refresh","1;register.jsp");
			}
			
		}
		public void destroy(){}
}