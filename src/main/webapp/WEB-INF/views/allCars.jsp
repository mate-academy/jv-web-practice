<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Display all cars</title>
</head>
<body>
<h1>All cars</h1>
<form method="get" action="${pageContext.request.contextPath}/cars/delete" id="delete" name="form">
    <select size="3" form="delete" id="select" name="id">
        <c:forEach items="${cars}" var="car">
            <option value="${car.id}"/>${car.id} ${car.model} ${car.manufacturer.id} ${car.manufacturer.name}
             ${car.manufacturer.country}
            <c:forEach items="${car.drivers}" var="driver">${driver.id} ${driver.name} ${driver.licenseNumber}</c:forEach>
            </option>
        </c:forEach>
    </select>
    <button type="submit">Delete</button>
</form>

</table>
<a href="${pageContext.request.contextPath}/index">Main</a>
<a href="${pageContext.request.contextPath}/cars/create">Add car</a>
<a href="${pageContext.request.contextPath}/manufacturers/create">Add manufacturer</a>
<a href="${pageContext.request.contextPath}/drivers/create">Add driver</a>
<a href="${pageContext.request.contextPath}/cars/add">Add driver to car</a>
</body>
</html>