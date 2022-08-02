<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Drivers</title>
</head>
<body>
<table>
    <tr>
        <td>ID</td>
        <td>Name</td>
        <td>Licence number</td>
        <td>Delete</td>
    </tr>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <td><c:out value="${driver.id}" /></td>
            <td><c:out value="${driver.name}" /></td>
            <td><c:out value="${driver.licenseNumber}" /></td>
            <td><a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}">delete this driver</a></td>
        </tr>
    </c:forEach>
</table>
</body>
<footer>
    <a href="${pageContext.request.contextPath}/drivers/create">Create new driver</a>
    <a href="${pageContext.request.contextPath}/cars/addDriver">Add driver to car</a>
    <a href="${pageContext.request.contextPath}/index">To main menu</a>
</footer>
</html>
