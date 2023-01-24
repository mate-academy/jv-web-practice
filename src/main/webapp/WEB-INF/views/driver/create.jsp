
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create driver</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/driver/create">
    Name<input type="text" name="name" required><br>
    LicenseNumber<input type="text" name="licenseNumber"><br>
    <button type="submit">Create</button>
</form>
</body>
</html>
