<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create a new driver</title>
</head>
<body>
<h1>Enter the information about a new driver</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    Name <input type="text" name="name" required><br>
    License Number = <input type="text" name="licenseNumber" required><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
