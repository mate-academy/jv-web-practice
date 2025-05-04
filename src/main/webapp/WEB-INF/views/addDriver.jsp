<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create a new Driver</title>
</head>
<body>
<h1>Please, fill the form below to create new driver:</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    Name <input type="text" name="name" required><br>
    LicenseNumber <input type="text" name="licenseNumber" required><br>
    <button type="submit">Create driver</button>
</form>
</body>
</html>
