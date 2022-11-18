<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All users</title>
</head>
<body>
<h1><p><strong>all drivers in db</strong></p></h1>
<table border="1">
        <thead>
        <tr>
            <th>Id</th>
            <th>name</th>
            <th>licence number</th>
        </tr>
        </thead>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <td><c:out value="${driver.id}" /></td>
            <td><c:out value="${driver.name}" /></td>
            <td><c:out value="${driver.licenseNumber}" /></td>
            <td>
                <a href="http://localhost:8080/drivers/delete/?id=${driver.id}">Delete</a>
            </td>
        </tr>
    </c:forEach>
</table>
<form action="${pageContext.request.contextPath}">
    <input type="submit" value="BACK">
</form>
</body>
</html>
