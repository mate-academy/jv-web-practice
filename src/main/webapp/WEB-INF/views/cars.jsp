<%--
  Created by IntelliJ IDEA.
  User: ssuni
  Date: 26.08.2022
  Time: 15:57
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Taxi service</title>
</head>
<body>
<table>
    <tr>
        <td>car_id</td>
        <td>model</td>
        <td>manufacturer_id</td>
        <td>manufacturer_name</td>
        <td>driver_id</td>
        <td>driver_name</td>
        <td>driver_license_number</td>
        <td>delete car</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.id}" /></td>
            <td><c:out value="${car.model}" /></td>
            <td><c:out value="${car.manufacturer.id}" /></td>
            <td><c:out value="${car.manufacturer.name}" /></td>
            <td>
                <c:forEach items="${car.drivers}" var="driver">
                    <tr>
                        <td><c:out value="${driver.id}" /></td>
                        <td><c:out value="${driver.name}" /></td>
                        <td><c:out value="${driver.licenseNumber}" /></td>
                    </tr>
                </c:forEach>
            </td>
            <td><a href="${pageContext.request.contextPath}/delete/car?id=${driver.id}">delete this car</a> </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
