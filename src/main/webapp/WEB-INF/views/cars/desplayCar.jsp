<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <c:out value="${car.id}"/>
    <c:out value="${car.model}"/>
    <c:out value="${car.manufacturer.id}"/>
    <c:out value="${car.manufacturer.name}"/>
    <c:out value="${car.manufacturer.country}"/>
</body>
</html>
