<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Create driver</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/drivers/create">
    Name: <input type="text" name="driver_name" placeholder="Driver name"><br>
    License number: <input type="text" name="driver_license_number" placeholder="Driver license number"><br>
    <button type="submit"> Create</button>
</form>
<br>
<a href="${pageContext.request.contextPath}/index">Back to main menu</a>
</body>
</html>
