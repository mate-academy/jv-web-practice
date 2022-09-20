<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>List of cars</h1>
<table>
    <tr>
        <td>Id</td>
        <td>Model</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.id}"/></td>
            <td><c:out value="${car.model}"/></td>
            <td><a href="${pageContext.request.contextPath}/cars/deleteCar?id=${car.id}">delete</a></td>
        </tr>
    </c:forEach>
</table>
<button type="button" name="return" ><a href="${pageContext.request.contextPath}/cars/createCar">Add new car</a></button>
<button type="button" name="return" ><a href="${pageContext.request.contextPath}/cars/drivers/add">Add driver to car</a></button>
<button type="button" name="return" ><a href="${pageContext.request.contextPath}/drivers">Go to table of drivers</a></button>
<button type="button" name="return" ><a href="${pageContext.request.contextPath}/manufacturers">Go to table of manufacturers</a></button>
</body>
</html>
