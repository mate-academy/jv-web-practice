<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Taxi services</title>
</head>
<body>
<h1>Add driver to car</h1>
<form method="post" action="${pageContext.request.contextPath}/services/fix">
    <table>
        <tr>
            <td>Driver</td>
            <td>
                <select name="driver_id">
                    <option selected="selected">Select driver</option>
                    <c:forEach items="${allDrivers}" var="driver">
                        <option value="${driver.id}">${driver.name} - License # ${driver.licenseNumber}</option>
                    </c:forEach>
                </select>
        </tr>
        <tr>
            <td>Car</td>
            <td>
                <select name="car_id">
                    <option selected="selected">Select car</option>
                    <c:forEach items="${allCars}" var="car">
                        <option value="${car.id}">${car.model} - ${car.manufacturer}</option>
                    </c:forEach>
                </select>
            </td>
        </tr>
    </table>
    <button type="submit">Create</button>
</form>
</body>
</html>
