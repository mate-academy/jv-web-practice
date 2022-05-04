<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: angel
  Date: 5/3/2022
  Time: 12:50 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Manufacturers:</title>
</head>
<body>
<h1>Manufacturers</h1>
<table>
    <tr>
        <td>ID</td>
        <td>NAME</td>
        <td>COUNTRY</td>
        <td>DELETE</td>
    </tr>
    <c:forEach items="${manufacturers}" var="manufacturer">
    <tr>
        <td><c:out value="${manufacturer.id}"/></td>
        <td><c:out value="${manufacturer.name}"/></td>
        <td><c:out value="${manufacturer.country}"/></td>
        <td><a href="${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturer.id}">delete</a></td>
        </tr>
        </c:forEach>
</table>
</body>
</html>
