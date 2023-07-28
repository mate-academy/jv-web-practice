<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cars table</title>
</head>
<body>
<table>
    <tr>
        <td><b>ID</b></td>
        <td><b>MODEL</b>></td>
        <td><b>Manufacturer</b></td>
        <td><b>Drivers</b></td>
        <td>DELETE</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.id}"/></td>
            <td><c:out value="${car.model}"/></td>
            <td>
                Id: <c:out value="${car.manufacturer.id}"/><br>
                Name: <c:out value="${car.manufacturer.name}"/><br>
                Country: <c:out value="${car.manufacturer.country}"/>
            </td>
                      <td><c:forEach items="${car.drivers}" var="driver">
                          Id: <c:out value="${driver.id}"/><br>
                          Name: <c:out value="${driver.name}"/><br>
                          License number: <c:out value="${driver.licenseNumber}"/>
                      </c:forEach>
        </td>
            <td><a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}">Delete</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
