<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car!</title>
</head>
<body>
<h1>Fill the form bellow to give car for driver!</h1>
<h2>List cars!</h2>
<table>
    <tr>
        <td>ID</td>
        <td>CAR_MODEL</td>
        <td>MANUFACTURER</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
        <td><c:out value="${car.id}" /></td>
        <td><c:out value="${car.model}" /></td>
        <td><c:out value="${car.manufacturer.name}" /></td>
        </tr>
    </c:forEach>
</table>
<h2>List drivers!</h2>
<table>
    <tr>
        <td>ID</td>
        <td>NAME</td>
        <td>LICENSE_NUMBER</td>
    </tr>
    <c:forEach items="${drivers}" var="driver">
        <tr>
        <td><c:out value="${driver.id}" /></td>
        <td><c:out value="${driver.name}" /></td>
        <td><c:out value="${driver.licenseNumber}" /></td>
        </tr>
    </c:forEach>
</table>
<h2>Form!</h2>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    CarID <input type="number" name="car_id"><br>
    DriverID <input type="number" name="driver_id"><br>
    <button type="submit">Add driver!</button>
</form>
</body>
</html>
