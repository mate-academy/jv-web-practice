<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Yelinskyi</title>
</head>
<body>
<h1>Create new driver!</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    DriverName <input type="text" name="drivername">
    LicenseNumber <input type="text" name="licensenumber">
    <button type="submit">Confirm</button>
</form>
</body>
</html>
