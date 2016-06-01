import java.util.*;
import java.io.*;
import java.sql.*;

public class TableCreate
{
public static void createTable(String path)
	{
	try{
	FileInputStream fn=new FileInputStream(path);
	byte[]br=new byte[fn.available()];
	fn.read(br);
	fn.close();
	String data=new String(br);
	StringTokenizer str=new StringTokenizer(data,"/");
	Connection con=ConnectionProvider.getConn();
	Statement st=con.createStatement();
	while(str.hasMoreTokens())
		{
		String query=str.nextToken();
		if(query.trim().equals("stop"))
			{
			break;
			}
			st.executeUpdate(query);
			
		}
	
	}
	catch(Exception e)
		{
		
		}
	}
}
