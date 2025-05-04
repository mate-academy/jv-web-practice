<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create new Driver</title>
</head>
<body>
<h1>Please fill the form below to add new driver</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/create">
    Name <input type="text" name="name" required><br>
    LicenseNumber <input type="number" name="licenseNumber" required><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
