<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create car result</title>
</head>
<body>
<h1>Car created and added to db</h1>
Id - <c:out value="${car.id}"/><br>
Model - <c:out value="${car.model}"/><br>
Manufacturer name - <c:out value="${car.manufacturer.name}"/><br>
Country - <c:out value="${car.manufacturer.country}"/><br>
</body>
</html>