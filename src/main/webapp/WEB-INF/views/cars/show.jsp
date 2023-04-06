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
                <form method="get" action="${pageContext.request.contextPath}/car/driver/action">
                    <input type="hidden" name="id" value="${car.id}">
                    <button type="submit">Drivers</button>
                </form>
            </td>
        </tr>
    </c:forEach>
</table>
<form method="post" action="${pageContext.request.contextPath}/car/add">
    Model <input type="text" name="model"><br>
    Manufacturer Name <input type="text" name="name"><br>
    Manufacturer Country <input type="text" name="country">
    <button type="submit">Add car</button>
</form>
</body>
</html>