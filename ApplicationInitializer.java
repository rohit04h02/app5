import javax.servlet.http.*;
import javax.servlet.*;
import java.sql.*;
import java.io.*;

public class ApplicationInitializer extends HttpServlet
{
	public void init(ServletConfig config)throws ServletException
		{
			ServletContext ctx=config.getServletContext();
			String val=ctx.getInitParameter("oracleTab");
			String prop=ctx.getRealPath("web-inf//db//db.properties");
			String oracle=ctx.getRealPath("web-inf//dbtable//oracletable.sql");
			LoadProperties.propLoad(prop);
			if(val.equals("yes"))
			 {
				 TableCreate.createTable(oracle);
				 System.out.println("table created successfulllllly");
			}
		}

}