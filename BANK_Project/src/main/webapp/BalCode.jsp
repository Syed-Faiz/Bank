<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Check Balance</title>
<style type="text/css">
h1{
color:purple;
}
table
{
border:1;
color:black;
}
</style>
</head>
<body>
<center>
<table border="1">
<%
String phno=request.getParameter("t1");
String name=request.getParameter("t2");
String pwd=request.getParameter("t3");
if(!phno.equals("")&&!name.equals("")&&!pwd.equals(""))
{
try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","bankapp","bankapp");
	PreparedStatement ps=con.prepareStatement("select * from bank where name=? and password=? and mobilenumber=?");
	ps.setString(1,name);
	ps.setString(2,pwd);
	ps.setString(3,phno);
	ResultSet rs=ps.executeQuery();
	ResultSetMetaData rss=rs.getMetaData();
	int n=rss.getColumnCount();
	out.print("<h1>Welcome "+name+"</h1><p><p>");
	for(int i=1;i<=n;i++)
		out.print("<td>"+"<br>"+rss.getColumnName(i));
		out.print("<tr>");
		while(rs.next())
		{
			for(int j=1;j<=n;j++)
			{
				out.print("<td><br>"+rs.getString(j));
			}
			out.print("</table>");
		}
	}
catch(Exception e)
{
	out.print(e);
}
}
else
{
	out.print("<h1>Fields Must not be empty<p></p>");
	out.print("<a href=bal.jsp>Back</a></h1>");
}
%>
</center>
</body>
</html>