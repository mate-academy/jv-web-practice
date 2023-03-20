<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title>ADD MANUFACTURER</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/registration/manufacturers/add">
	NAME<input type="text" name="name"><br>
	COUNTRY<input type="text" name="country"><br>
	PASSWORD<input type="password" name="password"><br>
	REPEAT PASSWORD<input type="password" name="repeat_password"><br>
	<button type="submit">Confirm</button>
</form>
</body>
</html>
