<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All cars</title>
</head>
<body>
<h1>
    List of cars:
</h1>
<table>
    <tr>
        <th style="border: solid black 1px">
            DRIVERS
        </th>
        <th style="border: solid black 1px">
            CAR ID
        </th>
        <th style="border: solid black 1px">
            CAR MODEL
        </th>
        <th style="border: solid black 1px">
            MANUFACTURER NAME
        </th>
        <th style="border: solid black 1px">
            DELETE
        </th>
    </tr>
    <c:forEach items="${cars}" var="car">
            <c:forEach items="${car.drivers}" var="driver">
                <tr>
                    <td style="border: solid black 1px">
                        <c:out value="${driver.name}"/>
                    </td>
                <td style="border: solid black 1px">
                    <c:out value="${car.id}"/>
                </td>
                <td style="border: solid black 1px">
                    <c:out value="${car.model}"/>
                </td>
                <td style="border: solid black 1px">
                    <c:out value="${car.manufacturer.name}"/>
                </td>
                <td style="border: solid black 1px">
                    <a href="${pageContext.request.contextPath}/cars/all/del?id=${car.id}">
                        delete
                    </a>
                </td>
                </tr>
            </c:forEach>
    </c:forEach>
</table>

<h2>
    Add new car:
</h2>
<form method="post" action="${pageContext.request.contextPath}/cars/all/add">
    Car model <input type="text" name="model">
    <br>
    Manufacturer id <input type="text" name="manufacturerId">
    <br>
    <button type="submit">Submit</button>
</form>
<h2>
    Add driver to car:
</h2>
<form method="post" action="${pageContext.request.contextPath}/cars/all/driver/add">
    Car id <input type="text" name="carId">
    <br>
    Driver id <input type="text" name="driverId">
    <br>
    <button type="submit">Submit</button>
</form>
</body>
</html>
