<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>GetAllDriversCars</title>
</head>
<body>
<a href="/drivers/cars/add">Add new driverCar</a>
<c:if test="${cars.size() == 0}">
    <h3>There is no drivers</h3>
</c:if>
<c:if test="${cars.size() > 0}">
    <table>
        <tr>
            <td>ID</td>
            <td>Model</td>
            <td>Manufacturer</td>
            <td>drivers</td>
        </tr>
        <c:forEach items="${cars}" var="car">
            <tr>
                <td><c:out value="${car.id}"/></td>
                <td><c:out value="${car.model}"/></td>
                <td><c:out value="${car.manufacturer.name}"/></td>
                <td>
                    <c:forEach items="${car.drivers}" var="driver">
                        <div style="float: left">
                            <c:out value="${driver.id}"/>
                            <a href="/drivers/cars/delete/?driverId=${driver.id}&carId=${car.id}">delete</a>
                        </div>
                        <br/>
                    </c:forEach>
                </td>
            </tr>
        </c:forEach>
    </table>
</c:if>
</body>
</html>