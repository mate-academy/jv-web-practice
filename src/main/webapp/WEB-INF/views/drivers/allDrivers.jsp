<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Driver list page</title>
</head>
<body>
<h1>All drivers list:</h1>
<table>
    <tr>
        <td>ID</td>
        <td>Name</td>
        <td>License Number</td>
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
<h2>Navigation:</h2>
<a href="${pageContext.request.contextPath}/drivers/add">Add new driver</a><br>
<a href="${pageContext.request.contextPath}/index">Back to index</a>
</body>
</html>
