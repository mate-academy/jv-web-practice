<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create new driver</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/driver/add">
    Name <input type="text" name="name"><br>
    LicenseNumber <input type="text" name="license_number"><br>
    <button type="submit">Create</button>
</form>
</body>
</html>
