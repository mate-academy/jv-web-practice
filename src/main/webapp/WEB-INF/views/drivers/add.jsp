<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver</title>
</head>
<body>
<h2>
    Add new driver:
</h2>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    DriverName <input type="text" name="name">
    <br>
    Licence number <input type="text" name="licenseNumber">
    <br>
    <button type="submit">Submit</button>
</form>
</body>
</html>
