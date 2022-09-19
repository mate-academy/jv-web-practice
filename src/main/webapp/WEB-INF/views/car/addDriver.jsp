<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
    <h1>Enter car id and driver id:</h1>
    <form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
        Car id    <input type="text" name="car_id">
        Driver id <input type="text" name="driver_id">
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
                <td><c:out value="${driver.getId()}"/></td>
                <td><c:out value="${driver.getName()}"/></td>
                <td><c:out value="${driver.getLicenseNumber()}"/></td>
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
        <td><c:out value="${car.getId()}"/></td>
        <td><c:out value="${car.getModel()}"/></td>
        <td><c:out value="${car.getManufacturer().getName()}"/></td>
    </c:forEach>
</table>

</body>
</html>
