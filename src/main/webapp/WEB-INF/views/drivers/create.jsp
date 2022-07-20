<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>driverCreation </title>
</head>
<body>
<h1>Wanna create some new driver?</h1>

<form method="post" action="${pageContext.request.contextPath}/drivers/create">
    Driver's name: <input type="text" name="name">
    Driver's license: <input type="text" name="licenseNumber">
    <button type="submit">Create driver</button>
</form>

<p><a href="${pageContext.request.contextPath}/drivers">To all drivers list</a></p>

</body>
</html>
