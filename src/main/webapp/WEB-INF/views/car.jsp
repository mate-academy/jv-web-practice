<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title>Car Service</title>
</head>
<body>
<h1 style="color: #003293; text-align: center">CAR SERVICE</h1>

<form style="text-align:center" method="post" action="${pageContext.request.contextPath}/cars">
	<a href="${pageContext.request.contextPath}/cars/add">
		<button style="width:50%;background-color:#125004;text-align:center" type="button">
			<h2 style="color:#3057b6; background-color: yellow">ADD CAR</h2></button>
	</a><br>
	<a href="${pageContext.request.contextPath}/cars/plus">
		<button style="width:50%;background-color:#125004;text-align:center" type="button">
			<h2 style="color:#3057b6; background-color: yellow">ADDING DRIVER TO CAR</h2></button>
	</a><br>
	<a href="${pageContext.request.contextPath}/cars/all">
		<button style="width:50%;background-color:#125004;text-align:center" type="button">
			<h2 style="color:#3057b6; background-color: yellow">DISPLAY ALL CAR</h2></button>
	</a><br>

</form>
</body>
</html>
