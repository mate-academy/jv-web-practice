<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all cars</title>
    <style>
        body{
            background-color: azure;    }
        div {
            text-align: center;
        }
    </style>
</head>
<body>
<div>
    <h1>All drivers from data:</h1>
    <table>
        <tr>
            <td>ID</td>
            <td>MODEL</td>
            <td>MANUFACTURER NAME</td>
            <td>MANUFACTURER COUNTRY</td>
            <td>DRIVER NAME</td>
        </tr>
        <c:forEach items="${cars}" var="car">
            <tr>
                <td><c:out value="${car.getId()}" /></td>
                <td><c:out value="${car.getModel()}" /></td>
                <td><c:out value="${car.getManufacturer().getName()}" /></td>
                <td><c:out value="${car.getManufacturer().getCountry()}" /></td>
                <td>
                    <c:forEach items="${car.drivers}" var="driver">
                        <c:out value="${driver.name}" />
                    </c:forEach>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
