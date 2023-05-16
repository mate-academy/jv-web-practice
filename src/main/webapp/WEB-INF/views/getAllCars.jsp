<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>GetAllCars</title>
</head>
<body>
<a href="/cars/add">Add new car</a>
<c:if test="${cars.size() == 0}" >
    <h3>There is no cars</h3>
</c:if>
<c:if test="${cars.size() > 0}" >
<table>
    <tr>
        <td>ID</td>
        <td>Model</td>
        <td>Manufacturer</td>
        <td>Options</td>
    </tr>
        <c:forEach items="${cars}" var="car">
            <tr>
                <td><c:out value="${car.id}"/></td>
                <td><c:out value="${car.model}"/></td>
                <td><c:out value="${car.manufacturer.name}"/></td>
                <td>
                    <a href="/cars/delete/?id=${car.id}">delete</a>
                </td>
            </tr>
        </c:forEach>
</table>
</c:if>
</body>
</html>