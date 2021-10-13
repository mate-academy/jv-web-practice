<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Drivers</title>
</head>
<body>
<form method="get" action="${pageContext.request.contextPath}/index">
    <button type="submit">Back to Main page</button>
</form>
<br>
<h1>All drivers from the database</h1>
<table>
    <tr>
        <td>ID</td>
        <td>Name</td>
        <td>License Number</td>
    </tr>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <td><c:out value="${driver.getId()}"/></td>
            <td><c:out value="${driver.getName()}"/></td>
            <td><c:out value="${driver.getLicenseNumber()}"/></td>
            <td><a href="${pageContext.request.contextPath}/driver/delete?id=${driver.getId()}">delete this driver</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
