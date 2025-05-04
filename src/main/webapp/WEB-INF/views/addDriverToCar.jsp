<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver</title>
</head>
<body>
<h3>Add driver to car</h3>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
  Car ID <input type="text" name="carId"><br>
  Driver ID <input type="text" name="driverId"><br>
    <button type="submit">submit</button>
</form>
<h3>List of drivers:</h3>
<table>
    <tr>
        <th>Id</th>
        <th>Name</th>
        <th>License number</th>
    </tr>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <td><c:out value="${driver.id}" /></td>
            <td><c:out value="${driver.name}" /></td>
            <td><c:out value="${driver.licenseNumber}" /></td>
        </tr>
    </c:forEach>
</table>
<h3>List of cars:</h3>
<table>
    <tr>
        <td>Id</td>
        <td>Manufacturer</td>
        <td>Model</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.id}" /></td>
            <td><c:out value="${car.manufacturer.name}" /></td>
            <td><c:out value="${car.model}" /></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
