<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Adding a driver</title>
</head>
<body>
    <h1>Add driver to database</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/create">
    Driver name <input type="text" name="driver_name"><br>
    Driver license number <input type="number" name="driver_licenseNumber"><br>
    <button type="submit">Add</button>
</form>
    <a href="${pageContext.request.contextPath}/index">Back to home</a>
</body>
</html>
