<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Drivers</title>
</head>
<body>
<a href="${pageContext.request.contextPath}/">Home</a>
<h1>All Drivers List:</h1>
<table>
    <tr>
        <td>ID</td>
        <td>NAME</td>
        <td>LICENSE_NUMBER</td>
    </tr>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <td><c:out value="${driver.id}" /></td>
            <td><c:out value="${driver.name}" /></td>
            <td><c:out value="${driver.licenseNumber}" /></td>
            <td>
                <a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}">
                    Delete This Driver
                </a>
            </td>
        </tr>
    </c:forEach>
    <tr>
        <td colspan="3">
            <a href="${pageContext.request.contextPath}/drivers/create">
                Create New Driver
            </a>
        </td>
    </tr>
</table>
</body>
</html>
