<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Drivers</title>
</head>
<body>
<h1>All drivers</h1>
<form action="${pageContext.request.contextPath}/drivers/add">
    <input type="submit" value="Add new driver"/>
</form>
<table>
    <thead>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>License number</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${driversList}" var="driver">
        <tr>
            <td>${driver.id}</td>
            <td>${driver.name}</td>
            <td>${driver.licenseNumber}</td>
            <td><a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}">DELETE</a></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
