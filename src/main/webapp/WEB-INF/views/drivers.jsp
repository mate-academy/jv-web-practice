<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
    <title>List of All Drivers</title>
</head>
<body>
<h1>List of drivers:</h1>
<table>
    <tr>
        <td>ID</td>
        <td>Name</td>
        <td>License Number</td>
    </tr>
    <c:forEach items="${drivers}" var="drivers">
        <tr>
            <td><c:out value="${drivers.id}"/></td>
            <td><c:out value="${drivers.name}"/></td>
            <td><c:out value="${drivers.licenseNumber}"/></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>