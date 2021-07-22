<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all drivers</title>
</head>
    <body>
    <c:forEach var="driver" items="${drivers}">
        <option value="${driver.name}">${driver.name}</option>
        <option value="${driver.licenseNumber}">${driver.licenseNumber}</option>
    </c:forEach>
</body>
</html>
