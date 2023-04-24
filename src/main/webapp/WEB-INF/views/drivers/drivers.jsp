<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Drivers list</title>
</head>
<body>
    <h1>Drivers list</h1>
<table>
    <tr>
        <td>id</td>
        <td>name</td>
        <td>licence number</td>
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
    <p><a href="${pageContext.request.contextPath}/index">Return to main page</a></p>
</body>
</html>
