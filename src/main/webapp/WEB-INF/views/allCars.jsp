<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<h1>List of Driver</h1>
<table>
    <tr>
        <td>Id</td>
        <td>MODEL</td>
        <td>MANUFACTURER ID</td>
        <td>MANUFACTURER NAME</td>
        <td>DRIVERS ID</td>
        <td>DRIVERS NAME</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.id}">id</c:out></td>
            <td><c:out value="${car.model}">model</c:out></td>
            <td><c:out value="${car.manufacturer.id}">manufacturer id</c:out></td>
            <td><c:out value="${car.manufacturer.name}">manufacturer name</c:out></td>
            <td><c:forEach items="${car.drivers}" var="driver">
                <c:out value="${driver.id}"/> <br>
            </c:forEach></td>
            <td><c:forEach items="${car.drivers}" var="driver">
                <c:out value="${driver.name}"/> <br>
            </c:forEach></td>
            <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">delete Car</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
