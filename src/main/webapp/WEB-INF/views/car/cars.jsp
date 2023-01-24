<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All cars</title>
</head>
<body>
<h1>List of all cars</h1>
<table>
<tr>
    <td>id</td>
    <td>model</td>
    <td>manufacturer</td>
    <td>drivers</td>
</tr>
<jsp:useBean id="carList" scope="request" type="java.util.List"/>
<c:forEach items="${carList}" var="car">
    <tr>
    <td><c:out value="${car.id}"/></td>
    <td><c:out value="${car.model}"/></td>
    <td><c:out value="${car.manufacturer.name}"/></td>
    <td>
    <c:forEach items="${car.drivers}" var="driver">
        <c:out value="${driver.name}"/>
    </c:forEach>
    <td>
    <a href="${pageContext.request.contexPath}/car/delete?id=${car.id}"><- delete car</a>
    </td>
    </tr>
    </table>
    </body>
    </html>
