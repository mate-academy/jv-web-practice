<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>All drivers</title>
</head>
<body>
<h1>List of drivers:</h1>
<table>
    <tr>
        <td>ID</td>
        <td>NAME</td>
        <td>LICENSE NUMBER</td>
    </tr>
    <c:forEach items="${drivers}" var="driver">
    <tr>
        <td><c:out value="${driver.getId()}" /></td>
        <td><c:out value="${driver.getName()}" /></td>
        <td><c:out value="${driver.getLicenseNumber()}" /></td>
    </tr>
    </c:forEach>
</table><br>
<a href="${pageContext.request.contextPath}/drivers/create">Create new driver</a><br>
<a href="${pageContext.request.contextPath}/drivers/delete">Delete driver</a><br>
<a href="${pageContext.request.contextPath}/">Back to main page</a><br>
</body>
</html>
