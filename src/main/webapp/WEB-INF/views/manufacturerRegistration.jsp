<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title>Manufacturer Service</title>
</head>
<body>
<h1 style="color: #125004; text-align: center">MANUFACTURER SERVICE</h1>

<form style="text-align:center" method="post" action="${pageContext.request.contextPath}/registration/manufacturers">
	<a href="${pageContext.request.contextPath}/registration/manufacturers/add">
		<button style="width:50%;background-color:#125004;text-align:center" type="button">
			<h2 style="color:#3057b6; background-color: yellow">ADD MANUFACTURER</h2></button>
	</a><br>
	<a href="${pageContext.request.contextPath}/registration/manufacturers/all">
		<button style="width:50%;background-color:#125004;text-align:center" type="button">
			<h2 style="color:#3057b6; background-color: yellow">DISPLAY ALL MANUFACTURER</h2></button>
	</a>
</form>
</body>
</html>
