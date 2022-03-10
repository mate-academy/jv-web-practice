<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Add new driver</title>
</head>
<body>
<h1>Please enter driver information</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    Name <input type="text" name="name" required><br>
    LicenseNumber <input type="text" name="license_number" required><br>
    <button type="submit">Submit</button>
</form>
</body>
</html>
