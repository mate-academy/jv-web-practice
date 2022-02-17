<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<html>
<head>
    <title>Manufacturers</title>
</head>
<body>
<jsp:include page="/WEB-INF/views/header.jsp"/>
<br/>
Manufacturers
<table>
    <tr>
        <td>ID</td>
        <td>NAME</td>
        <td>COUNTRY</td>
        <td>...</td>
    </tr>
<c:forEach items="${manufacturers}" var="manufacturer">
    <tr>
        <td><c:out value="${manufacturer.getId()}"/></td>
        <td><c:out value="${manufacturer.getName()}"/></td>
        <td><c:out value="${manufacturer.getCountry()}"/></td>
        <td><a href="${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturer.getId()}">delete</a></td>
    </tr>
</c:forEach>
</table>
<br/>
<a href="${pageContext.request.contextPath}/manufacturers/add">new manufacturer</a>
</body>
</html>
