<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Found manufacturer</title>
</head>
<body>
<h1>Manufacturer by id ${manufacturer.id}</h1>
Id - <c:out value="${manufacturer.id}"/><br>
Name - <c:out value="${manufacturer.name}"/><br>
Country - <c:out value="${manufacturer.country}"/><br>
</body>
</html>