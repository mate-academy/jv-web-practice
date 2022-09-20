<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
    <h1>Enter car id and driver id:</h1>
    <form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
        Car id    <input type="text" name="carId">
        Driver id <input type="text" name="driverId">
        <button type="submit">Add driver</button>
    </form>
</body>
<body>
    <h1>Driver's table</h1>
    <table>
        <tr>
            <td>ID</td>
            <td>NAME</td>
            <td>LICENSE_NUMBER</td>
        </tr>
        <c:forEach items="${drivers}" var="driver">
            <tr>
                <td><c:out value="${driver.id}"/></td>
                <td><c:out value="${driver.name}"/></td>
                <td><c:out value="${driver.licenseNumber}"/></td>
            </tr>
        </c:forEach>
    </table>
</body>
<body>
<h1>Car's table</h1>
<table>
    <tr>
        <td>ID</td>
        <td>MODEL</td>
        <td>MANUFACTURER_NAME</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
        <td><c:out value="${car.id}"/></td>
        <td><c:out value="${car.model}"/></td>
        <td><c:out value="${car.manufaturer.name}"/></td>
    </c:forEach>
</table>
</body>
</html>
