<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>ALL DRIVERS</title>
</head>
<body>
<h1>ALL DRIVERS FROM TAXI_SERVICE DB:</h1>
<table>
    <tr>
        <td>ID</td>
        <td>NAME</td>
        <td>LICENSE</td>
    </tr>
    <c:forEach items="${drivers}" var="driver">
        <tr>
        <td><c:out value="${driver.id}"/></td>
        <td><c:out value="${driver.name}"/></td>
        <td><c:out value="${driver.licenseNumber}"/></td>
        <td><a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}">DELETE</a></td>
        </tr>
    </c:forEach>
</table>
<tr>
    <td><a href="${pageContext.request.contextPath}/index">Main page</a></td>
</tr>
</body>
</html>
