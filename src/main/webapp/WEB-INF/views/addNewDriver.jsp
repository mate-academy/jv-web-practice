<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>New Driver</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/drivers/registration">
    Name <input type="text" name="name"><br>
    License number ID<input type="text" name="licenseNumber"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
