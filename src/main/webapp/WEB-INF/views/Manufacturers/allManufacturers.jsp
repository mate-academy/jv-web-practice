<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: pizna
  Date: 16.03.2023
  Time: 19:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All manufacturers</title>
</head>
<body>
<table>
    <tr>
        <td>ID</td>
        <td>NAME</td>
        <td>COUNTRY</td>
    </tr>
    <c:forEach items = "${allManufacturers}" var = "manufacturer">
        <tr>
            <td><c:out value="${manufacturer.id}" /></td>
            <td><c:out value="${manufacturer.name}" /></td>
            <td><c:out value="${manufacturer.country}" /></td>
            <td><a href="${pageContext.request.contextPath}/Manufacturers/deleteManufacturer?id=${manufacturer.id}"> delete this manufacturer></a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
