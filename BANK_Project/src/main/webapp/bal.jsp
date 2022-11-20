<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Balance Form</title>
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
<script>
function check(){

	var v1=f.t1.value;
	var v2=f.t2.value;
	var v3=f.t3.value;
	
	if(v1==" ")
	{
		alert("Please insert Valid Name");
		document.focus();
		return false;
	}
	if(v2==" ")
	{
		alert("Please insert Valid Name");
		document.focus();
		return false;
	}
	if(v3==" ")
	{
		alert("Please insert Valid Name");
		document.focus();
		return false;
	}
	
}
</script>
</head>
<body bgcolor="cyan">
<center>
<fieldset>
<table>
<form method="post" action="BalCode.jsp" name="f" onsubmit="return check()">
<legend>
BALANCE FORM
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