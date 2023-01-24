<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List manufacturers</title>
</head>
<body>
<h1>List manufacturers</h1>
<table>
    <tr>
        <td>id</td>
        <td>name</td>
        <td>country</td>
    </tr>
    <jsp:useBean id="manufacturerList" scope="request" type="java.util.List"/>
    <c:forEach items="${manufacturerList}" var="manufacturer">
        <tr>
            <td><c:out value="${manufacturer.id}"/></td>
            <td><c:out value="${manufacturer.name}"/></td>
            <td><c:out value="${manufacturer.country}"/></td>
            <td><a href="${pageContext.req.contextPath}/manufacturer/delete?id=${manufacturer.id}"><- delete manufacturer</a>
            </td>
        </tr>
    </c:forEach>
</table>
<p><a href="${pageContext.req.contextPath}/index">main page</a></p>
</body>
</html>
