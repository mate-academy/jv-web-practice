<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>GetAllDrivers</title>
</head>
<body>
<h1>List of drivers</h1>
<table border="1px solid black">
    <tr>
        <td>ID</td>
        <td>NAME</td>
        <td>LICENSE_NUMBER</td>
        <td>DELETE</td>
    </tr>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <td><c:out value="${driver.id}"/></td>
            <td><c:out value="${driver.name}"/></td>
            <td><c:out value="${driver.licenseNumber}"/></td>
            <td>
                <a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}">delete driver ${driver.name}</a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
