<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Car created</title>
</head>
<body>
<h2>Successfully created car:</h2>
id: <c:out value="${car.id}"/><br/>
model: <c:out value="${car.model}"/><br/>
manufacturer name: <c:out value="${car.manufacturer.name}"/><br/>
manufacturer country: <c:out value="${car.manufacturer.country}"/><br/>
Created without drivers!<br>
<a href="${pageContext.request.contextPath}/cars">To cars list</a>
</body>
</html>
