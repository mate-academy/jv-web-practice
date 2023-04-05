<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>My team</title>
</head>
<body>
<form method="get" action="${pageContext.request.contextPath}/drivers/driverList">
    <button type="submit"><--</button>
</form>
<h4>Create a Driver</h4>
<form method="post" action="${pageContext.request.contextPath}/drivers/driverCreate">
    Driver Name <br><input type="text" name="driverName"><br>
    Driver License Number <br><input type="text" name="licenseNumber"><br>
    <br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
