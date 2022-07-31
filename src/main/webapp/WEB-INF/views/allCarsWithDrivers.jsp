<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>all car</title>
</head>
<body>
<h2><a href="${pageContext.request.contextPath}/main">MAIN PAGE</a></h2>
<h2><a href="${pageContext.request.contextPath}/cars/drivers/add">add driver to car</a></h2>
<p>List of all car and drivers</p>
<table>
    <tr>
        <td>CAR MODEL</td>
        <td>DRIVERS LIST</td>
    </tr>
    <c:forEach items="${cars}" var="car">
    <tr>
        <c:if test="${car.drivers.size() >= '1'}">
            <td><c:out value="${car.manufacturer.name}"></c:out></td>
            <td><c:out value="${car.model}"/></td>
            <td><a href="${pageContext.request.contextPath}/car/all/drivers?id=${car.id}">driver list</a></td>
        </c:if>
        </c:forEach>
    </tr>
</table>
</body>
</html>
</body>
</html>
