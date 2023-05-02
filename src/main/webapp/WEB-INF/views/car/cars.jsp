<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title style="text-align: center">Displaying all Cars in our service</title>
</head>
<body>
<h1 style="color: chocolate;font-size: 50px; text-align: center;">
    List of cars:
</h1>
<table style="border:1px solid black;margin-left:auto;margin-right:auto;">
    <tr style="font-size: 30px;">
        <td style="text-align:center; padding: 15px">
            <b>ID</b>
        </td>
        <td style="text-align:center; padding: 15px">
            <b>MODEL</b>
        </td>
        <td style="text-align:center; padding: 15px">
            <b>MANUFACTURER</b>
        </td>
        <td style="text-align:center; padding: 15px">
            <b>DRIVERS</b>
        </td>
        <td style="text-align:center; padding: 15px">
            <b>ACTION</b>
        </td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr style="font-size: 25px;">
            <td style="text-align:center; padding: 15px">
                <c:out value="${car.id}"/>
            </td>
            <td style="text-align:center; padding: 15px">
                <c:out value="${car.model}"/>
            </td>
            <td style="text-align:center; padding: 15px">
                <c:out value="${car.manufacturer.name}"/>
            </td>
            <td style="text-align:center; padding: 15px">
                <c:forEach items="${car.drivers}" var="driver">
                    <c:out value="${driver.name} - ${driver.licenseNumber}"/><br>
                </c:forEach>
            </td>
            <td style="text-align:center; padding: 15px">
                <a href="/cars/delete?id=${car.id}" style="color: firebrick; text-decoration: none">DELETE</a>
            </td>
        </tr>
    </c:forEach>
</table>
<h1 style="font-size: 30px; text-align: center; padding-top: 30px">
    <a href="/" style="color: grey; text-decoration: none">BACK TO MAIN PAGE</a>
</h1>
<img src="/img/carGarage.gif" alt="Hi"
     style="margin-left: auto; margin-right: auto; width: 400px; height: 300px; display: block">
</body>
</body>
</html>
