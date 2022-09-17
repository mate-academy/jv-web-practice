<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver</title>
</head>
<body>
<h1>Add new driver</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers">
    DriverName <input type="text" name="name"><br>
    LicenseNumber <input type="text" name="licenseNumber"><br>
    <button type="submit">ADD</button>
</form>
</body>
</html>
