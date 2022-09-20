<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create driver</title>
</head>
<body>
<h3>Create driver</h3>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    Driver name <input type="text" name="driverName"><br>
    License number <input type="text" name="licenseNumber"><br>
    <button type="submit">confirm</button>
</form>
</body>
</html>
