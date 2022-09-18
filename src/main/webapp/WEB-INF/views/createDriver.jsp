<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create a driver</title>
</head>
<body>
<h3>Fill the form for create a new driver</h3>
<form method="post" action="${pageContext.request.contextPath}/drivers/create">
    Driver name <input type="text" name="driver-name">
    License number <input type="text" name="license-number">
    <button type="submit">Create driver</button>
</form>
</body>
</html>
