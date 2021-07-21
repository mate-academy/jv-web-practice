<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all drivers</title>
</head>
<body>
<a href="/drivers/add">Add driver</a>
<h1>List of drivers</h1>
<table style="border:solid;">
    <tr>
        <td>ID</td>
        <td>NAME</td>
        <td>LICENSE NUMBER</td>
    </tr>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <td><c:out value="${driver.id}" /></td>
            <td><c:out value="${driver.name}" /></td>
            <td><c:out value="${driver.licenseNumber}" /></td>
            <td><button type="submit" href="${pageContext.request.contextPath}/drivers/delete?&id=${driver.getId()}">delete</button></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
