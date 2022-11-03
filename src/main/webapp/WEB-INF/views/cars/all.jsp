<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All Cars</title>
</head>
<body>
<h1>All Drivers.</h1>
<table>
    <tr>
        <td>Id</td>
        <td>Model</td>
        <td>Manufacturer</td>
        <td>Drivers Id</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.id}" /></td>
            <td><c:out value="${car.model}" /></td>
            <td><c:out value="${car.manufacturer.name}" /></td>
            <td><c:forEach items="${car.drivers}" var="driver">
                <c:out value="${driver.id}"/>,
            </c:forEach></td>
            <td><a href="../cars/delete?id=<c:out value="${car.id}" />">Delete</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
