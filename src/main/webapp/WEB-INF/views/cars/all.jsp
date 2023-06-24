<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All cars</title>
    <style><%@include file="/WEB-INF/css/styles.css"%></style>
</head>
<body>
<h1>All cars</h1>
<table>
    <thead>
    <tr>
        <th>id</th>
        <th>Model</th>
        <th>Manuf. id | name</th>
        <th>Country</th>
        <th>Drivers</th>
        <th>V</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${cars}" var = "car">
        <tr>
            <td><c:out value="${car.id}"/></td>
            <td><c:out value="${car.model}"/></td>
            <td><c:out value="${car.manufacturer.id}"/> | <c:out value="${car.manufacturer.name}"/></td>
            <td><c:out value="${car.manufacturer.country}"/></td>
            <td>
                <c:forEach items="${car.drivers}" var="driver">
                        <c:out value="${driver.id} "/>
                        <c:out value="${driver.name}"/>
                    <br>
                </c:forEach>
            </td>
            <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}"> delete </a></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
