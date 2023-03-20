<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title>Driver Service</title>
</head>
<body>
<h1 style="color: #003293; text-align: center">DRIVER SERVICE</h1>

<form style="text-align:center" method="post" action="${pageContext.request.contextPath}/registration/drivers">
	<a href="${pageContext.request.contextPath}/registration/drivers/add">
		<button style="width:50%;background-color:#125004;text-align:center" type="button">
			<h2 style="color:#3057b6; background-color: yellow">ADD DRIVER</h2></button>
	</a><br>
	<a href="${pageContext.request.contextPath}/registration/drivers/all">
		<button style="width:50%;background-color:#125004;text-align:center" type="button">
			<h2 style="color:#3057b6; background-color: yellow">DISPLAY ALL DRIVERS</h2></button>
	</a><br>
</form>
</body>
</html>
