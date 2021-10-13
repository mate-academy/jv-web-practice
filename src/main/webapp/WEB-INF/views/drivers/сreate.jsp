<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>add driver</title>
</head>
<body>
<h1>Please add a new driver to the database</h1><br>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    Name <input type="text" name="driverName"><br>
    License Number <input type="text" name="licenseNumber"><br>
    <button type="submit">add new driver</button>
</form>
</body>
</html>
