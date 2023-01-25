
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create driver</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/drivers/create">
    Name<input type="text" name="name" required><br>
    LicenseNumber<input type="text" name="licenseNumber" required><br>
    <button type="submit">Create</button>
</form>
</body>
</html>
