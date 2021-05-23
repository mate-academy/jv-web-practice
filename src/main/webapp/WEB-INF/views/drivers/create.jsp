<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create a new driver</title>
</head>
<body>
<h1>Enter information to create a new driver</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/create">
    Name <input type="text" name="name" required><br>
    License number <input type="text" name="licenseNumber" required><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
