<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create new driver</title>
</head>
<body>
<h1>Please input info about your driver</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/create">
    Username<input type="text" name="name" required><br>
    License number<input type="text" name="licenseNumber" required><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>