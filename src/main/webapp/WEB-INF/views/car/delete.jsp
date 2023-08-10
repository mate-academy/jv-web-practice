<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Taxi services</title>
</head>
<body>
<table valign="middle" align="center" border="BLACK" cellpadding="5">
    <caption>ALL CARS</caption>
    <thead>
    <tr>
        <th>ID</th>
        <th>Model</th>
        <th>Manufacturer</th>
        <th>Driver</th>
        <th>Operation</th>
    </tr>
    </thead>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td align="center"><c:out value="${car.id}" /></td>
            <td align="center"><c:out value="${car.model}" /></td>
            <td align="center"><c:out value="${car.manufacturer}" /></td>
            <td align="center"><c:out value="${car.drivers}" /></td>
            <td><a href="${pageContext.request.contextPath}
            /cars/dodelete?id=${car.id}"> Delete car </a></td>
        </tr>
    </c:forEach>
    <tr>
        <td colspan="5" align="center"><a href="${pageContext.request.contextPath}/index">
            Home page</a></td>
    </tr>
</table>
</body>
</html>
