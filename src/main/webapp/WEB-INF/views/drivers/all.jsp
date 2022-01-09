<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All Drivers</title>
</head>
<body>
<table>
    <caption><h3>List of all drivers:</h3></caption>
    <thead>
    <tr>
        <td>Id</td>
        <td>Name</td>
        <td>License number</td>
        <td>Delete</td>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <td><c:out value="${driver.id}"/></td>
            <td><c:out value="${driver.name}"/></td>
            <td><c:out value="${driver.licenseNumber}"/></td>
            <td><a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}">delete</a></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
