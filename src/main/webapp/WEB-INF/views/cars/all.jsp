<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cars</title>
</head>
<body>
<a href="${pageContext.request.contextPath}/">Home</a>
<h1>All Cars List:</h1>
<table>
    <tr>
        <td>ID</td>
        <td>MODEL</td>
        <td>MANUFACTURER</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.id}" /></td>
            <td><c:out value="${car.model}" /></td>
            <td><c:out value="${car.manufacturer.name}" /></td>
            <td>
                <a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">
                    Delete car
                </a>
            </td>
            <td>
                <a href="${pageContext.request.contextPath}/cars/car?id=${car.id}">
                    Car details
                </a>
            </td>
        </tr>
    </c:forEach>
    <a href="${pageContext.request.contextPath}/cars/create">
        Create new car
    </a>
</table>
</body>
</html>
