<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Adding a driver</title>
</head>
<body>
<h1>Hello, mates!</h1>

<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    Name <input type="text" name="driverName"><br>
    License number <input type="text" name="driverLicenseNumber"><br>
    <button type="submit">Confirm</button>

</form>
</body>
</html>