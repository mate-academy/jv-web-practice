<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<html>
<head>
    <title>Driver registration</title>
</head>
<body>
<h1>Please fill the form below</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/create">
    Driver's name <input type="text" name="driverName"><br>
    License number <input type="text" name="licenseNumber"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
