<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title>Registration</title>
</head>
<body>

<h1 style="color:#994ab4; text-align:center">PLEASE REGISTRATION</h1>

<form style="text-align:center" method="post" action="${pageContext.request.contextPath}/registration">
	<a href="${pageContext.request.contextPath}/registration/cars">
		<button style="width:50%;background-color:#125004;text-align:center"
		        type="button"><h1 style="color:#3057b6; background-color: yellow">CAR</h1></button>
	</a><br>
	<a href="${pageContext.request.contextPath}/registration/drivers">
		<button style="width:50%;background-color: #125004;text-align:center"
		        type="button"><h1 style="color:#3057b6; background-color: yellow">DRIVER</h1></button>
	</a><br>
	<a href="${pageContext.request.contextPath}/registration/manufacturers">
		<button style="width:50%;background-color: #125004;text-align:center"
		        type="button"><h1 style="color:#3057b6; background-color: yellow">MANUFACTURER</h1></button>
	</a><br>
</form>
</body>
</html>
