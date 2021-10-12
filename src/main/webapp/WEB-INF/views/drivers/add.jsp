<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>New driver</title>
</head>
<body>
<h1>Add new driver</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    Driver name <input type="text" name="driver_name"><br>
    Driver license Number <input type="number" name="driver_license_number"><br>
    <button type="submit">Add</button>
</form>

</body>
</html>
