<%@page import="oracle.jdbc.driver.OracleSQLException"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
<style>
h1
{
color:red;
height:500px;
}
a
{
text-decoration:none;
}
</style>
</head>
<body>
<center>
<table border="1">
<%
String name=request.getParameter("t1");
String pwd=request.getParameter("t2");
String cpwd=request.getParameter("t3");
String amount=request.getParameter("t4");
String add=request.getParameter("t5");	
String phno=request.getParameter("t6");
if(!name.equals("")&&!pwd.equals("")&&!cpwd.equals("")&&!amount.equals("")&&!add.equals("")&&!phno.equals(""))
{
if(pwd.equals(cpwd))
{
	try
	{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","bankapp","bankapp");
		PreparedStatement ps=con.prepareStatement("insert into bank values(?,?,?,?,?)");
		ps.setString(1,name);
		ps.setString(2,pwd);
		ps.setString(3,amount);
		ps.setString(4,add);
		ps.setString(5,phno); 
		int i = ps.executeUpdate();
		if(i>=1)
		{
		out.print("<h1>ACOCUNT CREATED SUCCESFULL</h1><p></p>");	
		PreparedStatement ps1 =con.prepareStatement("select * from bank where name=?");	
		ps1.setString(1,name);
		ResultSet rs=ps1.executeQuery();
		ResultSetMetaData rss=rs.getMetaData();
		int n=rss.getColumnCount();
		
		for(int r=1;r<=n;r++)
			out.println("<td><font color=blue size=3>"+"<br>"+rss.getColumnName(r));
			out.println("<tr>");
			while(rs.next())
			{
				for(int t=1;t<=n;t++)
				{
					out.println("<td>"+"<br>"+rs.getString(t));
				}
					out.println("</table><p></p>");
					out.print("<a href=main.jsp>BACK TO HOME</a>");
			}
		}
		con.close();
	}
	catch(SQLException ex)
	{
		out.print("<h1>Mobile Number Already Exist<p></p>");
		out.print("<a href=reg.jsp>Back</a></h1>");
	}
}	
else
{
	out.print("<h1>Password and Confirm Password must be same</h1><p></p>");
	out.print("<a href=reg.jsp>Back</a>");
}
}
else
{
out.print("<h1>Fields Must not be empty<p></p>");
out.print("<a href=reg.jsp>Back</a></h1>");
}
%>
</center>
</body>
</html>