<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Deposit</title>
<style type="text/css">
h1
{
color:purple;
fontsize:60px;
}
h2
{
color:orange;
}
h3
{
color:green;
}
body
{
color:blue;
}

</style>
</head>
<body color="blue">
<center>
<table>
<%
String phno=request.getParameter("t1");
String name=request.getParameter("t2");
String pwd=request.getParameter("t3");
if(!phno.equals("")&&!name.equals("")&&!pwd.equals("")){
try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","bankapp","bankapp");
	PreparedStatement ps=con.prepareStatement("delete from bank where mobilenumber=? and name=? and password=?");
	ps.setString(1,phno);
	ps.setString(2,name);
	ps.setString(3,pwd);
	int i = ps.executeUpdate();
	out.print("<h1>Account Closed Sucessfully</h1><p></p>");
	
	con.close();
} 
catch(Exception e)
{
	out.print(e);
}
}
else
{
	out.print("<h1>Field Must Not Be Empty<p></p>");
	out.print("<a href=close.jsp>Back</a></h1>");
}
%>
</body>
</html>