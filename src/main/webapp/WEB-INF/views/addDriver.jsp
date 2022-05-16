<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>addDriver</title>
</head>
<body>
<h1>Create a new driver</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    Name <input type="text" name="name"/><br>
    License Number <input type="text" name="licenseNumber"/><br>
    <button type="submit">Create Driver</button>
</form>
</body>
</html>
