<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All drivers</title>
</head>
<body>
<h1>All drivers</h1>
<table>
<tr>
    <td><h3>ID</h3></td>
    <td><h3>Driver</h3></td>
    <td><h3>License</h3></td>
    <td><h3>Delete</h3></td>
</tr>
<c:forEach items="${drivers}" var="driver">
    <tr>
        <td><c:out value="${driver.id}" /></td>
        <td><c:out value="${driver.name}" /></td>
        <td><c:out value="${driver.licenseNumber}" /></td>
        <td><a href = "${pageContext.request.contextPath}/drivers/delete?id=${driver.id}"><button TYPE="submit">Delete</button></a></td>
    </tr>
</c:forEach>
</table>
<br>
<a href = "${pageContext.request.contextPath}/index"><button TYPE="submit">Back</button></a>
</body>
</html>
