<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add new car</title>
</head>
<body>
<h3>CREATE CAR</h3>
<form method="post" action="${pageContext.request.contextPath}/cars/create">
    Model: <input type="text" name="model"><br><br>
    Manufacturer: <input type="number" name="manufacturerId"><br><br>
    <button type="submit">Create car</button>
</form>
</body>
</html>
