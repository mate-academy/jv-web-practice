<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all drivers</title>
</head>
<body>
<h1>ALL DRIVERS TABLE</h1>
<table>
    <tr>
        <td>ID</td>
        <td>name</td>
        <td>driver_license</td>
    </tr>
    <c:forEach items="${drivers}" var="driver">
        <tr>
        <td><c:out value="${driver.getId()}" /></td>
        <td><c:out value="${driver.getName()}" /></td>
        <td><c:out value="${driver.getLicenseNumber()}" /></td>
        <td><a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.getId()}">delete this driver</a></td>
        </tr>
    </c:forEach>    
</table>
</body>
</html>
