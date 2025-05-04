<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>New Driver</title>
</head>
<body>
<h1>Add driver's name and license number below:</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    Name <input type="text" name="name"><br>
    License number <input type="number" name="licenseNumber"><br>
    <button type="submit">Add driver</button>
</form>
</body>
</html>
