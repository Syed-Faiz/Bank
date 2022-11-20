<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Transfer</title>
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
</style>
</head>
<body>
<center>
<table>
<%
String phno=request.getParameter("t1");
String name=request.getParameter("t2");
String pwd=request.getParameter("t3");
String phno2=request.getParameter("t4");
String amount=request.getParameter("t5");
if(!phno.equals("")&&!name.equals("")&&!pwd.equals("")&&!amount.equals("")&&!phno2.equals("")){
try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","bankapp","bankapp");
	PreparedStatement ps=con.prepareStatement("update bank set amount=amount-? where mobilenumber=? and name=? and password=?");
	ps.setString(1,amount);
	ps.setString(2,phno);
	ps.setString(3,name);
	ps.setString(4,pwd);
	int i = ps.executeUpdate();
	out.print("<h1>WELCOME "+ name + "</h1><p></p>");
	out.print("<h2>Amount Transfered Sucessfully</h2><p></p>");
	
	PreparedStatement ps1=con.prepareStatement("select amount from bank where mobilenumber=?");
	ps1.setString(1,phno);
	ResultSet rs=ps1.executeQuery();
	while(rs.next())
	out.print("<h3>Your Balance is : " +rs.getString("amount")+"</h3>");

	
	PreparedStatement ps2=con.prepareStatement("update bank set amount=amount+? where mobilenumber=?");
	ps2.setString(1, amount);
	ps2.setString(2,phno2);
	int s = ps2.executeUpdate();
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
	out.print("<a href=trans.jsp>Back</a></h1>");
}
%>
</body>
</html>