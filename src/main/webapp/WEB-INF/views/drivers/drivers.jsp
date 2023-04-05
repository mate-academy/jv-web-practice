<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Drivers</title>
</head>
<body>
<%@ include file="/WEB-INF/views/header/buttonHeader.jsp"%><br>
<h1 style="font-size: 24px;font-family: Calibri,serif">To add new driver please fill form</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/createDriver">
    Driver name <input type="text" name="name"><br>
    License number <input type="text" name="licenseNumber"><br>
    <button type="submit">Create</button>
</form>
<h1 style="font-size: 24px;font-family: Calibri,serif">List of drivers</h1>
<table>
    <tr>
        <td>ID</td>
        <td>NAME</td>
        <td>LICENSE NUMBER</td>
    </tr>
    <c:forEach items="${drivers}" var = "driver">
        <tr>
            <td><c:out value ="${driver.id}"/></td>
            <td><c:out value ="${driver.name}"/></td>
            <td><c:out value ="${driver.licenseNumber}"/></td>
            <td><a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}">
                <input type="button" value="DELETE"></a></td>
        </tr>
    </c:forEach>
</table>
<h1 style="font-size: 24px; font-family: Calibri,serif">Add driver in car</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/add_driver_to_car">
    Car <select name="car_id">
    <c:forEach items="${cars}" var="car">
        <option value="${car.id}">
            <c:out value="${car.manufacturer.name}"/>
            -
            <c:out value="${car.model}"/>
        </option>
    </c:forEach>
</select><br>
    Driver <select name="driver_id">
    <c:forEach items="${drivers}" var="driver">
        <option value="${driver.id}">
            <c:out value="${driver.name}"/>
            -
            <c:out value="${driver.licenseNumber}"/>
        </option>
    </c:forEach>
</select><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>