<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All cars</title>
</head>
<style><%@include file="/WEB-INF/style/style.css"%></style>
<body>
    <%@include file="/WEB-INF/includes/header.jsp"%>
    <h2>List of cars</h2>
    <c:if test="${cars.size() == 0}">
        No items yet
    </c:if>
    <c:if test="${cars.size() > 0}">
        <table>
            <tr>
                <td>id</td>
                <td>model</td>
                <td>manufacturer</td>
                <td>drivers</td>
                <td>actions</td>
            </tr>
                <c:forEach items="${cars}" var="car">
                    <tr>
                        <td>${car.id}</td>
                        <td>${car.model}</td>
                        <td>${car.manufacturer}</td>
                        <td>
                            <ul>
                                <c:forEach items="${car.drivers}" var="driver">
                                    <li>id = ${driver.id}, name = ${driver.name}, licenseNumber = ${driver.licenseNumber}
                                        <a href="${pageContext.request.contextPath}/cars/drivers/delete?car_id=${car.id}&driver_id=${driver.id}">Delete this driver</a></li>
                                </c:forEach>
                            </ul>
                        </td>
                        <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">Delete</a></td>
                    </tr>
                </c:forEach>
        </table>
    </c:if>
    <hr>
    <h2>Add car</h2>
    <form method="post" action="${pageContext.request.contextPath}/cars/add">
        Model: <input type="text" name="model"><br>
        Manufacturer id: <input type="number" name="manufacturer_id"><br>
        <button type="submit">Add</button>
    </form>
</body>
</html>
