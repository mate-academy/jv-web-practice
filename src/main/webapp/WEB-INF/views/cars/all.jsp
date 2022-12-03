<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All cars</title>
</head>
<body>
<a href="${pageContext.request.contextPath}/index">Go to Main Page</a>
<br>
<h2>All cars</h2>
<table>
    <tr>
        <th>Manufacturer</th>
        <th>Model</th>
        <th>Drivers</th>
        <th>Delete</th>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td>${car.getManufacturer().getName()}</td>
            <td>${car.model}</td>
            <td><c:if test="${car.getDrivers().size() > 0}">
                <c:forEach items="${car.getDrivers()}" var="driver">
                    <p>${driver.name}</p>
                </c:forEach>
                </c:if>
                <c:if test="${car.getDrivers().size() == 0}">
                   <p>-</p>
                </c:if>
            </td>
            <td>
               <a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">
                   DELETE
               </a>

            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
