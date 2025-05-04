<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get All Cars</title>
</head>
<body>
<h1>List of cars:</h1>
<table>
    <tr>
        <td>ID</td>
        <td>MODEL</td>
        <td>MANUFACTURERID</td>
        <td>DELETED</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.id}"/></td>
            <td><c:out value="${car.name}"/></td>
            <td><c:out value="${car.manufacturer}"/></td>
            <td><a href="${pageContext.request.contextPath}/cars/delete?id=${$cars.id}"></a>delete this car</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
