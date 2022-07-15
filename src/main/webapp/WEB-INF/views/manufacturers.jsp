<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all manufacturers</title>
</head>
<body>
<h1>List all manufacturers:</h1>
<table>
    <tr>
        <td>ID</td>
        <td>NAME</td>
        <td>COUNTRY</td>
        <td>DELETE</td>
        <c:forEach items="${manufacturers}" var="car">
    <tr>
        <td><c:out value="${car.id}"/></td>
        <td><c:out value="${car.name}"/></td>
        <td><c:out value="${car.country}"/></td>
        <td><a href="${pageContext.request.contextPath}/manufacturers/delete?id=${car.id}">delete this manufacturer</a></td>
    </tr>
    </c:forEach>
    </tr>
</table>
<a href="${pageContext.request.contextPath}/manufacturers/add">
    <button class="GFG">
        To create a manufacturer, click here
    </button>
</a>
</body>
</html>
