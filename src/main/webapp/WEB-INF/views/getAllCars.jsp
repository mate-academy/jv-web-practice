<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All cars</title>
    <style>
        table, td, th {
            border: 2pt black solid;
            caption-side: initial;
            border-collapse: revert;
            color: black;
        }
    </style>
</head>
<body>
<h1>All cars</h1>
<table>
    <tr>
        <th>Car ID</th>
        <th>Car model
        </td>
        <th>Manufacturer name</th>
        <th>Manufacturer country</th>
        <th>Driver list</th>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.getId()}"/></td>
            <td><c:out value="${car.getModel()}"/></td>
            <td><c:out value="${car.getManufacturer().getName()}"/></td>
            <td><c:out value="${car.getManufacturer().getCountry()}"/></td>
            <td><c:out value="${car.getDrivers()}"/></td>
            <td>
                <form method="get"
                      action="${pageContext.request.contextPath}/drivers/add">
                    <button type="submit">
                        Add driver
                    </button>
                </form>
            </td>
        </tr>
    </c:forEach>
</table>
<form method="get"
      action="${pageContext.request.contextPath}/cars/create">
    <button type="submit">
        Add new car
    </button>
</form>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    <table>
        <tr>
            <td>Car ID</td>
            <td><input type="number" name="car_id"><br></td>
        </tr>
        <tr>
            <td>Driver ID</td>
            <td><input type="number" name="driver_id"></td>
        </tr>
    </table>
    <button type="submit">Add driver to car</button>
</form>
<form method="get"
      action="${pageContext.request.contextPath}/index">
    <button type="submit">
        back to service
    </button>
</form>
</body>
</html>
