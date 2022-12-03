<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All drivers</title>
</head>
<br>
<a href = "${pageContext.request.contextPath}/index">Go to Main Page</a>
<body>
<h2>All drivers:</h2>
<table>
    <tr>
        <th>id</th>
        <th>Name</th>
        <th>License</th>
        <th>Delete</th>
    </tr>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <td><c:out value="${driver.id}" /></td>
            <td><c:out value="${driver.name}" /></td>
            <td><c:out value="${driver.licenseNumber}" /></td>
            <td>
                <a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}">
                   DELETE
                </a>
            </td>
        </tr>
    </c:forEach>
</table>
<br>
</body>
</html>
