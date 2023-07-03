<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All drivers</title>
</head>
<body>
<h1>All drivers</h1>
<p><a href="${pageContext.request.contextPath}/index">Home</a></p>
<p><a href="${pageContext.request.contextPath}/drivers/new">Create a driver</a></p>
<table>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>License number</th>
        <th>Action</th>
    </tr>
    <c:forEach var="driver" items="${drivers}">
        <tr>
            <td>${driver.id}</td>
            <td>${driver.name}</td>
            <td>${driver.licenseNumber}</td>
            <td>
                <form action="${pageContext.request.contextPath}/drivers/delete" method="post">
                    <input type="hidden" name="id" value="${driver.id}">
                    <button type="submit">X</button>
                </form>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
