<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All cars</title>
</head>
<h1>List of Cars</h1>
<body>
<table>
    <tr>
        <td>Car id</td>
        <td>Model</td>
        <td>Manufacturer</td>
        <td>Driver name</td>
        <td>Driver license</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
        <td><c:out value="${car.id}" /></td>
        <td><c:out value="${car.model}" /></td>
        <td><c:out value="${car.manufacturer.name}" /></td>
        <c:forEach items="${car.drivers}" var="driver">
            <tr>
                <td><c:out value="${driver.name}" /></td>
                <td><c:out value="${driver.licenseNumber}" /></td>
            </tr>
        </c:forEach>
        <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">delete this car</a></td>
        <td>

        </td>
        </tr>
    </c:forEach>
</table>
<form action="${pageContext.request.contextPath}/cars/add">
    <input type="submit" value="Add new car">
</form>
<h2></h2>
<form action="${pageContext.request.contextPath}/cars/add/driver">
    <input type="submit" value="Add Driver to car">
</form>
<h2></h2>
<form action="${pageContext.request.contextPath}/index">
    <input type="submit" value="Return to First page">
</form>
</body>
</html>
