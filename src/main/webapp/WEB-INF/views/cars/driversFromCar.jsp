<%--
  Created by IntelliJ IDEA.
  User: vvasy
  Date: 05.04.2023
  Time: 17:24
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>TAXI-Add driver to car</title>
</head>
<body>
<%@ include file="/WEB-INF/views/index.jsp"%><br>
<h2>Add driver to car form: <c:out value="${car.model}" /></h2><br>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add?car_id=${car.id}">
    Driver <select name="driver_id">
    <c:forEach items="${allDrivers}" var="driver">
        <option value="${driver.id}">
            <c:out value="${driver.id}" />.
            <c:out value="${driver.name}" /> -
            <c:out value="${driver.licenseNumber}" />
        </option>
    </c:forEach>
</select><br>
    <input type="hidden" value="${car.id}" name="car_id" />
    <button type="submit">Add driver</button>
</form><br>
<h2>Drivers</h2>
<table>
    <tr>
        <td>Id</td>
        <td>Name</td>
        <td>License number</td>
    </tr>
    <c:forEach items="${car.drivers}" var="driver">
    <tr>
        <td><c:out value="${driver.id}" /></td>
        <td><c:out value="${driver.name}" /></td>
        <td><c:out value="${driver.licenseNumber}" /></td>
    </tr>
    </c:forEach>
</body>
</html>
