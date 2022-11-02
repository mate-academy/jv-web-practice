<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register a user</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/drivers/create">
    Name <input type="text" name="name"><br>
    License Number <input type="text" name="licenseNumber"><br>
    <button type="submit">Send</button>
</form>
</body>
</html>
