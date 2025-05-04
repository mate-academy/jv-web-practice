<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all drivers</title>
</head>
<body>
<table border="1">
    <tr>
        <th colspan="4"><h1>List of drivers</h1></th>
    </tr>
    <tr>
        <th>id</th>
        <th>name</th>
        <th>license number</th>
        <th>delete link</th>
    </tr>
    <c:forEach items="${drivers}" var="driver">
    <tr>
        <td><c:out value="${driver.id}" /></td>
        <td><c:out value="${driver.name}" /></td>
        <td><c:out value="${driver.licenseNumber}" /></td>
        <td><a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}">delete this driver</a></td>
    </tr>
    </c:forEach>
    <tr>
        <th colspan="5"><a href="${pageContext.request.contextPath}/drivers/add">Add new driver</a></th>
    </tr>
    <tr>
        <th colspan="5"><a href="${pageContext.request.contextPath}/index">Back to main</a></th>
    </tr>
</table>
</body>
</html>
