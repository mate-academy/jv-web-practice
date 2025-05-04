<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All drivers</title>
</head>
<body>
<h1>List of drivers:</h1>
<table>
    <tr>
        <td> ID </td>
        <td> NAME </td>
        <td> LICENSE NUMBER </td>
    </tr>
    <c:forEach items ="${allDrivers}" var ="driver">
        <tr>
            <td><c:out value="${driver.id}" /></td>
            <td><c:out value="${driver.name}" /></td>
            <td><c:out value="${driver.licenseNumber}" /></td>
            <td><a href="${pageContext.request.contextPath}/drivers/deleteDriver?id=${driver.id}">delete this driver></a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
