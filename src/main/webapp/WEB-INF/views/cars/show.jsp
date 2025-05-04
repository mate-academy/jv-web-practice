<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <%@ include file="/WEB-INF/views/buttons.jsp" %>
    <br>
    <title>Cars</title>
</head>
<body>
<h1>List of cars</h1>
<table>
    <tr>
        <th>ID</th>
        <th>MODEL</th>
        <th>MANUFACTURER</th>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.id}"/></td>
            <td><c:out value="${car.model}"/></td>
            <td><c:out value="${car.manufacturer.name}"/></td>
            <td><c:out value="${car.manufacturer.country}"/></td>
            <td>
                <form method="post" action="${pageContext.request.contextPath}/car/delete">
                    <input type="hidden" name="id" value="${car.id}">
                    <button type="submit">Delete</button>
                </form>
            </td>
            <td>
                <form method="get" action="${pageContext.request.contextPath}/car/driver/add">
                    <button type="submit">Add Driver</button>
                </form>
            </td>
            <td>
                <form method="get" action="${pageContext.request.contextPath}/car/driver/delete">
                    <button type="submit">Delete Driver</button>
                </form>
            </td>
        </tr>
    </c:forEach>
</table>
<form method="post" action="${pageContext.request.contextPath}/car/add">
    Model <input type="text" name="model"><br>
    Id Of Manufacturer <input type="text" name="manufacturer_id"><br>
    <button type="submit">Add car</button>
</form>
<h1>LIST OF MANUFACTURERS</h1><br>
<table>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Country</th>
    </tr>
    <c:forEach items="${manufacturers}" var="manufacturer">
        <tr>
            <td><c:out value="${manufacturer.id}"/></td>
            <td><c:out value="${manufacturer.name}"/></td>
            <td><c:out value="${manufacturer.country}"/></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
