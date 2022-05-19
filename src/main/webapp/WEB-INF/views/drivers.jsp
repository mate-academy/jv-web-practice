<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All drivers</title>
</head>
<body>
<a href="${pageContext.request.contextPath}/drivers/add">add new driver</a>
<h1>List of all cars</h1>
<table border="1" cellpadding="5"
       style="border-collapse: collapse; border: 1px solid black;">
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>License number</th>
        <th>Delete</th>
    </tr>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <td><c:out value="${driver.id}"/></td>
            <td><c:out value="${driver.name}"/></td>
            <td><c:out value="${driver.licenseNumber}"/></td>
            <td><a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}">delete this driver</a></td>
        </tr>
    </c:forEach>
</table>
<a href="${pageContext.request.contextPath}/index">back to index page</a>
</body>
</html>
