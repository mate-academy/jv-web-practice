<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Driver Registration</title>
</head>
<body>
<h1>Please fill the driver registration form below</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    Driver name <input type="text" name="name" required><br>
    Driver license <input type="text" name="licenseNumber" required><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
