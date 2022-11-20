<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Deposit Form</title>
<style>
fieldset
{
width:50%;
height:80%;
margin:20px;
padding:20px;
background-color: honeydew;
margin-top: 100px;
}
td
{
margin:60px;
}
table
{
margin:30px;
}
</style>
</head>
<body bgcolor="cyan">
<center>
<fieldset>
<table>
<form method="post" action="DepositCode.jsp">
<legend>
DEPOSIT FORM
<tr>
<td>
Mobile Number
</td>
<td>
<input type="text" name="t1">
</td>
</tr>
<p></p>
<tr>
<td>
User Name</td>
<td>
<input type="text" name="t2">
</td>
</tr>
<p></p>
<tr>
<td>
Password
</td>
<p></p>
<td>
<input type="password" name="t3">
</td>
</tr>
<p></p>

<tr>
<td>
Amount
</td>
<p></p>
<td>
<input type="text" name="t4">
</td>
</tr>
<p></p>
<tr>
<td></td>
<td>
<input type="submit" value="SUBMIT">&emsp;
<input type="reset" value="CLEAR">&emsp;
</td>
</tr>

</form>
</table>
</legend>
</fieldset>
</center>
</body>
</html>