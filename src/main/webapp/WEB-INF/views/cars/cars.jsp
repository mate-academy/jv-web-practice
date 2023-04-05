<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cars</title>
</head>
<body>
<%@ include file="/WEB-INF/views/header/buttonHeader.jsp"%><br>
<h1 style="font-size: 24px;font-family: Calibri,serif">List of cars</h1>
<table style="align-content: center">
    <tr>
        <td>ID</td>
        <td>MANUFACTURER</td>
        <td>MODEL</td>
    </tr>
    <c:forEach items="${cars}" var = "car">
        <tr>
            <td><c:out value ="${car.id}"/></td>
            <td><c:out value ="${car.manufacturer.name}"/></td>
            <td><c:out value ="${car.model}"/></td>
            <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">
                <input type="button" value="DELETE"></a></td>
        </tr>
    </c:forEach>
</table>
<h1 style="font-size: 24px;font-family: Calibri,serif">Create car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/createCar">
    Manufacturer <select name="manufacturer_id">
    <c:forEach items="${manufacturers}" var="manufacturer">
        <option value="${manufacturer.id}">
            <c:out value="${manufacturer.name}"/>
            -
            <c:out value="${manufacturer.country}"/>
        </option>
    </c:forEach>
</select><br>
    Model <input type="text" name="model">
    <button type="submit">Create</button>
</form>
</body>
</html>
