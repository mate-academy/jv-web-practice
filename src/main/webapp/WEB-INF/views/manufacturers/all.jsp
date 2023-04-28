<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Manufacturers</title>
</head>
<body>
<h1>List of Manufacturers</h1>
<table>
<tr>
    <th>ID</th>
    <th>NAME</th>
    <th>COUNTRY</th>
    <c:forEach var="m" items="${manufacturers}">
        <td>
            <c:out value="${m.id}"/>
        </td>
        <td>
            <c:out value="${m.name}"/>
        </td>
        <td>
            <c:out value="${m.country}"/>
        </td>
</tr>
    </c:forEach>
</table>
</body>
</html>
