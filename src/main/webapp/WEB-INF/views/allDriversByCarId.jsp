<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>all car</title>
</head>
<body>
<h2><a href="${pageContext.request.contextPath}/main">MAIN PAGE</a></h2>
<p>List of all car and drivers</p>
<p><c:out value="${car.manufacturer.name}"></c:out></p>
<p><c:out value="${car.model}"></c:out></p>
<h3>List drivers by car id : <c:out value="${car.id}"></c:out></h3>
<table>
    <tr>
        <td>ID</td>
        <td>NAME</td>
        <td>LICENSE NUMBER</td>
        <c:forEach items="${drivers}" var="driver">
    <tr>
        <td><c:out value="${driver.id}"></c:out></td>
        <td><c:out value="${driver.name}"/></td>
        <td><c:out value="${driver.licenseNumber}"/></td>
        <td><a href="${pageContext.request.contextPath}/cars/drivers/delete?car_id=${car.id}&driver_id=${driver.id}">delete</a></td>
        </c:forEach>
    </tr>
</table>
</body>
</html>
</body>
</html>
