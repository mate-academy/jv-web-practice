<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Вика
  Date: 23.05.2022
  Time: 00:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>MANUFACTURERS:</h1>
<table>
    <tr>
        <td>ID</td>
        <td>NAME</td>
        <td>COUNTRY</td>
    </tr>
    <c:forEach items="${allManufacturersList}" var="manufacturer">
        <tr>
            <td><c:out value ="${manufacturer.id}" /></td>
            <td><c:out value ="${manufacturer.name}" /></td>
            <td><c:out value ="${manufacturer.country}" /></td>
            <td><a href="${pageContext.request.contextPath}manufacturers/delete?id=${manufacturer.id}">DELETE</a> </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
