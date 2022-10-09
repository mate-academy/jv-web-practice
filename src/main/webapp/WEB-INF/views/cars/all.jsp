<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All cars</title>
</head>
<body>
<table border="2">
    <tr>
        <td>ID</td>
        <td>BRAND</td>
        <td>MODEL</td>
        <td>DRIVERS</td>
        <td>DELETE</td>
        <td>ADD DRIVER TO CAR</td>


    </tr>
    <c:forEach items="${cars}" var="car">
    <tr>
        <td><c:out value="${car.id}" /></td>
        <td><c:out value="${car.manufacturer.name}" /></td>
        <td><c:out value="${car.model}" /></td>
        <td>
            <form method="post" action="${pageContext.request.contextPath}/cars/drivers/delete">
                <select type="number" name="driverId">
                    <c:forEach items="${car.drivers}" var="driver">
                        <option value="<c:out value="${driver.id}"/>"><c:out value="${driver.name}"/></option>
                    </c:forEach>
                </select>
                <div>
                    <input type="hidden" name="carId" value="${car.id}">
                </div>
                <div>
                    <button type="submit">delete</button>
                </div>
            </form>
        </td>
        <td><a href="${pageContext.request.contextPath}/cars/delete?car_id=${car.id}">Delete car</a></td>
        <td>
            <form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
                <div>
                    Driver: <select type="number" name="driver_id">
                    <c:forEach var="driverCar" items="${drivers}">
                        <option value="<c:out value="${driverCar.id}"/>"><c:out value="${driverCar.name}"/></option>
                    </c:forEach>
                </select>
                    <input type="hidden" name="carId" value="${car.id}">
                </div>
                <div>
                    <button type="submit">Add driver</button>
                </div>
            </form>
        </td>
    </tr>
    </c:forEach>
</table>
<form>
    <div>
        <input type="button" value="Add new car" onClick='location.href="${pageContext.request.contextPath}/cars/add"'>
    </div>
</form>
</body>
</html>
