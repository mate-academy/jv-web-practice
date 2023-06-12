<%--
  Created by IntelliJ IDEA.
  User: vvasy
  Date: 05.04.2023
  Time: 12:43
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>TAXI-cars</title>
</head>
<body>
<%@ include file="/WEB-INF/views/index.jsp"%><br>
<h2>Create car form: </h2>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Car model <input type="text" name="model" required><br>
    Manufacturer <select name="manufacturer_id">
    <c:forEach items="${manufacturers}" var="manufacturer">
        <option value="${manufacturer.id}">
            <c:out value="${manufacturer.id}" />.
            <c:out value="${manufacturer.name}" />
        </option>
    </c:forEach>
</select><br>
    <button type="submit">Submit and Add</button><br>
</form><br>
<h2>Cars: </h2>
<table>
    <tr>
        <td>Id</td>
        <td>Model</td>
        <td>Manufacturer</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.id}" /></td>
            <td><c:out value="${car.model}" /></td>
            <td><c:out value="${car.manufacturer.name}" /></td>
            <td><a href="${pageContext.request.contextPath}/cars/drivers/add?car_id=${car.id}">
                <input type="button" value="Add drivers" />
            </a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
