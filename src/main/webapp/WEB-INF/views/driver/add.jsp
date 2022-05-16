<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add new driver</title>
</head>
<body>
<h1>Please, fill the form below</h1>

<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    Name <input type="text" name="driverName"><br>
    License <input type="text" name="license"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
