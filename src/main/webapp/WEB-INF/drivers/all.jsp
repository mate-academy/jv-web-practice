<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Drivers</title>
</head>
<body>
<h1>List of drivers:</h1>
<table>
    <td>ID</td>
    <td>NAME</td>
    <td>LICENSE NUMBER</td>
    <td></td>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <td><c:out value="${driver.getId()}"/></td>
            <td><c:out value="${driver.getName()}"/></td>
            <td><c:out value="${driver.getLicenseNumber()}"/></td>
            <td><a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.getId()}">Delete this driver</a></td>
        </tr>
    </c:forEach>
</table>
<br/>
<a href="${pageContext.request.contextPath}/main">Back to main page</a>
</body>
</html>
