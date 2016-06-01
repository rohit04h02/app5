import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.sql.*;

public class LoginFilter implements Filter
{
FilterConfig config;

	public void init(FilterConfig config)throws ServletException
	{
	this.config=config;
	}
	
	public void doFilter(ServletRequest req,ServletResponse res,FilterChain chain)throws IOException,ServletException
		{
			String uid=req.getParameter("userId");
			String pass=req.getParameter("pass");
			String type=req.getParameter("usertype");
			PrintWriter out=res.getWriter();
			ServletContext ctx=config.getServletContext();
			try
			{
				Connection c=(Connection)ctx.getAttribute("con");
				Statement s=c.createStatement();
				String s1="select * from cust where userId='"+uid+"'";
				ResultSet rs=s.executeQuery(s1);
				if(rs.next())
				{	
					if(rs.getString("pass").equals(pass))
					{
						if(rs.getString("loginStatus").equals("f"))
						{
							s.executeUpdate("update cust set loginStatus='t' where userId='"+uid+"' and pass='"+pass+ "'");
							chain.doFilter(req,res);
						}
						else
						{
							out.println("<html><body> <h1>" +uid+ "	already loggedin,Try with another ID</h1>");
							HttpServletResponse rss=(HttpServletResponse)res;
							rss.setHeader("Refresh","1;index.jsp");
						}
					}
					else 
					{
						out.println("<html><body> <h1> Entered wrong Password Try Again !!! </h1>");
						HttpServletResponse rss=(HttpServletResponse)res;
						rss.setHeader("Refresh","1;index.jsp");
					}
					
				}
				else
					{	
						out.println("<h1>" +uid+ " Kindly Register yourself with us</h1>");
						HttpServletResponse rss=(HttpServletResponse)res;
						rss.setHeader("Refresh","1;register.jsp");
					}
					
			}catch(Exception e)
				{   
				e.printStackTrace();
				}
		}
				
		
	public void destroy(){}
}