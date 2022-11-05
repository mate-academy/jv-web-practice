<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register new driver</title>
</head>
<body>
<h1>Register new driver</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/create">
    Name <input type="text" name="name"><br>
    License Number <input type="text" name="licenseNumber"><br>
    <button type="submit">Send</button>
</form>
</body>
</html>
