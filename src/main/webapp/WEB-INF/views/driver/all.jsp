<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Drivers</title>
</head>
<body>
<c:if test="${empty drivers}">
    <h1>We don't have drivers</h1>
</c:if>
    <h2>All drivers</h2>
<table>
    <tr>
        <td><b>Id:</b></td>
        <td><b>Name:</b></td>
        <td><b>License number:</b></td>
    </tr>
<c:forEach items="${drivers}" var="driver">
    <tr>
        <td><c:out value="${driver.id}"/></td>
        <td><c:out value="${driver.name}"/></td>
        <td><c:out value="${driver.licenseNumber}"/></td>
    </tr>
</c:forEach>
</table>
</body>
</html>
