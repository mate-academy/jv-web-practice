<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>all manufacturer</title>
</head>
<body>

<h2><a href="${pageContext.request.contextPath}/main">MAIN PAGE</a></h2>
<h2><a href="${pageContext.request.contextPath}/manufacturers/add">add manufacturer</a></h2>
<p>List of manufacturer:</p>
<table>
    <tr>
        <td>ID</td>
        <td>NAME</td>
        <td>COUNTRY</td>
    </tr>
    <c:forEach items="${manufacturers}" var="manufacturer">
    <tr>
        <td><c:out value="${manufacturer.id}"/></td>
        <td><c:out value="${manufacturer.name}"/></td>
        <td><c:out value="${manufacturer.country}"/></td>
        <td><a href="${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturer.id}">delete</a></td>
        </c:forEach>
    </tr>
</table>
</body>
</html>
