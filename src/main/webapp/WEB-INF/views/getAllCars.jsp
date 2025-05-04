<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all cars</title>
</head>
<body>
<tr>
    <td>ID</td>
    <td>Model</td>
    <td>Manufacturer</td>
    <td>Driver</td>
    <td>Delete</td>
</tr>
</br>
<c:forEach items="${cars}" var="car">
    <tr>
        <td><c:out value="${car.id}"/></td>
        <td><c:out value="${car.model}"/></td>
        <td><c:out value="ID - ${car.manufacturer.id}"/><c:out value=" Name - ${car.manufacturer.name}"/><c:out value=" Country - ${car.manufacturer.country}"/></td>
        <td><c:forEach items="${car.drivers}" var="driver">
            <c:out value="ID - ${driver.id}"/><c:out value=" Name - ${driver.name}"/><c:out value=" License number - ${driver.licenseNumber}"/>
            </br>
        </c:forEach>
        </td>
        <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">Delete car</a></td>
    </tr>
    </br>
</c:forEach>
</body>
</html>

