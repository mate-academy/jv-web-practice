<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Driver registration form</title>
</head>
<body>
<h2>Please, fill the fields below</h2><br>
<form method="post" action="${pageContext.request.contextPath}/drivers/create">
    Drivers Name<input type = "text" name = "name" required> <br>
    License Number<input type="text" name="licenseNumber" required><br>
    <button type="submit"> Submit </button>
</form>
</body>
</html>
