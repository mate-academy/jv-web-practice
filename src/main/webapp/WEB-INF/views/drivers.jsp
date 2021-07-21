<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Drivers</title>
</head>
<body bgcolor="#fafad2">
<h1 align="center" style="color: lightsteelblue">List of drivers</h1>
<div align="center">
    <a href="/index">Home</a>
    <a href="/cars">Show cars</a>
    <a href="/drivers">Show drivers</a>
    <a href="/manufacturers">Show manufacturers</a>
</div>

<a href="/drivers/add">Create new Driver</a><br>
<table border="1">
    <tr>
        <th>ID</th>
        <th>NAME</th>
        <th>LICENSE NUMBER</th>
    </tr>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <td><c:out value="${driver.id}" /></td>
            <td><c:out value="${driver.name}" /></td>
            <td><c:out value="${driver.licenseNumber}" /></td>
            <td><a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}">DELETE</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
