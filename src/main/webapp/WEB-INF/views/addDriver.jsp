<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver</title>
</head>
<body>
<h1>Fill the form to create new driver</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    Name <input type="text" name="name"><br>
    LicenseNumber <input type="text" name="license_number"><br>
    <button type="submit">Create a new driver!</button>
</form>
</body>
</html>