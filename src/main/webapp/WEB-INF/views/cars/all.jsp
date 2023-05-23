<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all cars</title>
</head>
<body>
<h1>List of cars:</h1>
<table>
    <tr>
        <td>Car ID</td>
        <td>MODEL</td>
        <td>MANUFACTURER</td>
        <td>DRIVERS</td>
        <td>DELETE CAR</td>
    </tr>
    <c:forEach items="${cars}" var="car">
    <tr>
        <td><c:out value="${car.id}"/></td>
        <td><c:out value="${car.model}"/></td>
        <td><c:out value="${car.manufacturer.name}"/></td>
        <td>
            <c:forEach items="${car.drivers}" var="driver">
                <c:out value="${driver.name}, "/>
            </c:forEach>
        </td>
        <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">remove car ${car.id} from DB</a></td>
        </c:forEach>
</table>
<h1>Adding driver to car</h1>
<form method="post" action="${PageContext.request.contextPath}/cars/drivers/add">
    <table>
        <tr>
            <td>
                <select name="driver_id">
                    <c:forEach items="${drivers}" var="driver">
                        <option value="${driver.id}">
                            id <c:out value="${driver.id}"/>,
                            <c:out value="${driver.name}"/>
                        </option>
                    </c:forEach>
                </select>
            </td>
            <td> will get the </td>
            <td>
                <select name="car_id">
                    <c:forEach items="${cars}" var="car">
                        <option value="${car.id}">
                            id <c:out value="${car.id}"/>,
                            <c:out value="${car.model}"/>
                        </option>
                    </c:forEach>
                </select>
            </td>
            <td><button type="submit">add</button></td>
        </tr>
    </table>
</form>
</body>
</html>
