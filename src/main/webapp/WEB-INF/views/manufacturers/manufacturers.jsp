<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Show all manufacturers</title>
</head>
<body>
<h2>List of all manufacturers</h2>
<table>
    <tr>
        <td style="padding: 10px">ID</td>
        <td style="padding: 10px">Name</td>
        <td style="padding: 10px">Country</td>
        <td style="padding: 10px">Delete manufacturer</td>
    </tr>
    <c:forEach items="${manufacturers}" var="manufacturer">
        <tr>
            <td style="padding: 10px"><c:out value="${manufacturer.id}"/></td>
            <td style="padding: 10px"><c:out value="${manufacturer.name}"/></td>
            <td style="padding: 10px"><c:out value="${manufacturer.country}"/></td>
            <td style="padding: 10px"><a href="${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturer.id}">delete this manufacturer</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
