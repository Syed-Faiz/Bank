<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Closing Account</title>
<style>
fieldset
{
width:50%;
height:200%;
margin:20px;
padding:20px;
margin-top:150px;
background-color: honeydew;
}
legend
{
border:1px solid black;
background-color: orange;
}
td
{
margin:60px;
}
table
{
margin:30px;
}
body
{
background-color:aqua;

}
</style>
</head>
<body>
<center>
<fieldset>
<table>
<form method="post" action="CloseCode.jsp">
<legend>
CLOSING ACCOUNT FORM
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