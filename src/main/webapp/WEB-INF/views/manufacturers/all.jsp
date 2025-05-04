<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Manufacturers:</h1>
<table>
    <tr>
        <th>id</th>
        <th>Name</th>
        <th>Country</th>
    </tr>
    <c:forEach items="${manufacturers}" var="manufacturer">
        <tr>
            <td><c:out value="${manufacturer.id}" /></td>
            <td><c:out value="${manufacturer.name}" /></td>
            <td><c:out value="${manufacturer.country}" /></td>
            <td>
                <form method="post" action="${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturer.id}">
                    <button type="submit">DELETE MANUFACTURER</button>
                </form>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
