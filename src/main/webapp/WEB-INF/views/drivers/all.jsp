<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Taxi drivers</title>
</head>
<body>
<h1>List of drivers:</h1>
<table>
    <tr>
        <td><h3>ID</h3></td>
        <td><h3>Name</h3></td>
        <td><h3>License Number</h3></td>
    </tr>
    <c:forEach items="${allDrivers}" var="driver">
        <tr>
            <td><c:out value="${driver.id}" /></td>
            <td><c:out value="${driver.name}" /></td>
            <td><c:out value="${driver.licenseNumber}" /></td>
            <td><a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}">Delete driver</a></td>
        </tr>
    </c:forEach>
    <tr>
        <td><a href="${pageContext.request.contextPath}/index">Back to index page</a><br></td>
    </tr>
</table>
</body>
</html>
