<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver</title>
</head>
<body>
<h1>Input data of driver</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/add" >
    Name <input type="text" name="driver_name"><br>
    License number <input type="text" name="license_number"><br>
    <button type="submit">Save driver</button>
</form>
</body>
</html>
