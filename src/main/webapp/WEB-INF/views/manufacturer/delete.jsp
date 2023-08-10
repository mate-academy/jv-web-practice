<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Taxi services</title>
</head>
<body>
<table valign="middle" align="center" border="BLACK" cellpadding="5">
    <caption>ALL MANUFACTURERS</caption>
    <thead>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Country</th>
        <th>Operation</th>
    </tr>
    </thead>
    <c:forEach items="${manufacturers}" var="manufacturer">
        <tr>
            <td align="center"><c:out value="${manufacturer.id}" /></td>
            <td align="center"><c:out value="${manufacturer.name}" /></td>
            <td align="center"><c:out value="${manufacturer.country}" /></td>
            <td><a href="${pageContext.request.contextPath}
            /manufacturers/dodelete?id=${manufacturer.id}"> Delete manufacturer </a></td>
        </tr>
    </c:forEach>
    <tr>
        <td colspan="4" align="center"><a href="${pageContext.request.contextPath}/index">
            Home page</a></td>
    </tr>
</table>
</body>
</html>
