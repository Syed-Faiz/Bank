<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register Form</title>
<style>
fieldset
{
width:50%;
height:80%;
margin:20px;
padding:20px;
margin-top: 100px;
background-color: honeydew;
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
<form method="post" action="RegCode.jsp">
<legend>
REGISTRATION FORM
<tr>
<td>
USER NAME
</td>
<td>
<input type="text" name="t1">
</td>
</tr>
<p></p>
<tr>
<td>
PASSWORD
</td>
<td>
<input type="password" name="t2">
</td>
</tr>
<p></p>
<tr>
<td>
Confirm PASSWORD
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

<td>
<input type="text" name="t4">
</td>
</tr>
<p></p>
<tr>
<td>
Address
</td>
<td>
<input type="text" name="t5">
</td>
</tr>
<p></p>
<tr>
<td>
MOBILE NUMBER
</td>
<td>
<input type="text" name="t6">
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