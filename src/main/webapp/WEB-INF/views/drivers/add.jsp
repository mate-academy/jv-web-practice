<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Drivers</title>
</head>
<body>
<h1>Add driver</h1>

<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    DriverName <input type="text" name="name"><br>
    LicenseNumber <input type="text" name="license_number"><br>
    <button type="submit">Create</button>
</form>
</body>
</html>
