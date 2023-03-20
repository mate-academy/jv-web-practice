<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title>ADD DRIVER</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/registration/drivers/add">
	DRIVER NAME <input type="text" name="driverName"><br>
	LICENSE NUMBER <input type="text" name="licenseNumber"><br>
	PASSWORD <input type="password" name="password"><br>
	REPEAT PASSWORD <input type="password" name="repeat_password"><br>
	<button type="submit">Confirm</button>
</form>
</body>
</html>
