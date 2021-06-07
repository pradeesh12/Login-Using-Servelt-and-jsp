<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%	
	response.setHeader("Cache-Control", "no-cache,no-store-must-revalidate");
	response.setHeader("Progma", "no-cache");
	response.setHeader("Expires","0");
	   if(session.getAttribute("username")==null)
		{
			response.sendRedirect("login.jsp");
		}
	%>
		Welcome ${username}  <br>
	<input type="checkbox" id="vehicle1" name="vehicle1" value="Bike">
	<label for="vehicle1"> Morning Work</label><br>
	<input type="checkbox" id="vehicle2" name="vehicle2" value="Car">
	<label for="vehicle2"> Evening Work</label><br>
	<input type="checkbox" id="vehicle3" name="vehicle3" value="Boat">
	<label for="vehicle3"> Night Work</label><br>
	<br>
	<a href="videos.jsp">For Time Pass Click Here</a>
	<form action="Logout">
		<input type="submit" value="Logout">
	</form>
</body>
</html>