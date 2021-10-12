<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
    <title>Show all drivers</title>
</head>
<body>
<h1>List of drivers:</h1>
<table>
    <tr>
        <td>ID</td>
        <td>NAME</td>
        <td>LICENSE_NUMBER</td>
    </tr>
    <c:forEach items="${drivers}" var="manufacturer">
        <tr>
            <td><c:out value="${manufacturer.id}"/></td>
            <td><c:out value="${manufacturer.name}"/></td>
            <td><c:out value="${manufacturer.licenseNumber}"/></td>
            <td>
                <a href="${pageContext.request.contextPath}/drivers/delete?id=${manufacturer.id}">DELETE</a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
