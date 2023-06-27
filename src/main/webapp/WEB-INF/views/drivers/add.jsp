<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Driver Registration</title>
</head>
<body>
<h1>Driver Registration</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    Driver's name <input type="text" name="driver_name"><br>
    License number <input type="text" name="license_number"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
