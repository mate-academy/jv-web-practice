<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Car list</title>
</head>
<body>
<table>
    <caption><h2>List of cars</h2></caption>
    <tr>
        <td>ID</td>
        <td>Model</td>
        <td>Manufacturer</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.id}"/></td>
            <td><c:out value="${car.model}"/></td>
            <td><c:out value="${car.manufacturer.name}"/></td>
            <td><c:forEach items="${car.drivers}" var="driver">
                <tr>
                    <td><c:out value="${driver.name}"/></td>
                </tr>
            </c:forEach> </td>
            <td><a href = "${pageContext.request.contextPath}/cars/delete?id=${car.id}">delete</a></td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
