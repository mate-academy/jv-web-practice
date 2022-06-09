<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Creating a driver</title>
</head>
<body>
<h2>Set parameters to create a driver:</h2>
<form method="post" action="${pageContext.request.contextPath}/drivers/create">
    Name <input type="text" name="driver_name"><br>
    LicenseNumber <input type="text" name="driver_license_number"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>