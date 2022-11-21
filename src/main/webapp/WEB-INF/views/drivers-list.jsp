<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Drivers list</title>
</head>
<body>
<table>
    <caption><h2>List of users</h2></caption>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Email</th>
        <th>Profession</th>
    </tr>
    <c:forEach var="user" items="${drivers.rows}">
        <tr>
            <td><c:out value="${user.id}" /></td>
            <td><c:out value="${user.name}" /></td>
            <td><c:out value="${user.email}" /></td>
            <td><c:out value="${user.profession}" /></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
