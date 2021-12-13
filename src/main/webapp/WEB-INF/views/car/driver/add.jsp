<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<table>
    <tr>
        <td>ID</td>
        <td>NAME</td>
        <td>LICENSE NUMBER</td>
    </tr>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <td><c:out value="${driver.id}"/></td>
            <td><c:out value="${driver.name}"/> </td>
            <td><c:out value="${driver.licenseNumber}"/> </td>
        </tr>
    </c:forEach>
    <tr>
        <td>ID</td>
        <td>MODEL</td>
        <td>MANUFACTURER</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.id}"/></td>
            <td><c:out value="${car.model}"/> </td>
            <td><c:out value="${car.manufacturer.name}"/> </td>
        </tr>
    </c:forEach>
</table>
<form method="post" action="${pageContext.request.contextPath}/car/driver/add">
    Driver ID <input type="text" name="driverId"><br>
    Car ID <input type="text" name="carId"><br>
    <button type="submit">Create</button>
</form>
</body>
</html>
