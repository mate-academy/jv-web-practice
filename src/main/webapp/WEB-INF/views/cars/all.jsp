<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title> Cars</title>
</head>
<body>
<h1> list of cars:</h1>
<table>
    <tr>
        <td>CAR ID</td>
        <td>MODEL</td>
        <td>MANUFACTURER ID</td>
        <td>DRIVERS ID</td>
    </tr>
    <c:forEach items="${cars}" var="car">
    <tr>
        <td><c:out value="${car.id}" /></td>
        <td><c:out value="${car.model}" /></td>
        <td><c:out value="${car.manufacturer.id}" /></td>
        <c:forEach items="${car.drivers}" var="driver">
            <td><c:out value="${driver.id}" /></td>
        <tr>
        </tr>
        <td><td><td>
        </c:forEach>
        <td>
            <a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">
            delete car with id: ${car.id}
            </a>
        </td>
    </tr>
    </c:forEach>
</body>
</html>
