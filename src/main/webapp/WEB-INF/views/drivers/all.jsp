<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Drivers</title>
</head>
<body>
<table>
    <tr>
        <td>ID</td>
        <td>NAME</td>
        <td>LICENSE NUMBER</td>
        <td>DELETE</td>
    </tr>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <td><c:out value="${driver.id}" /></td>
            <td><c:out value="${driver.name}" /></td>
            <td><c:out value="${driver.licenseNumber}" /></td>
            <td>
                <a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}">
                    Delete this driver
                </a>
            </td>
        </tr>
    </c:forEach>
</table>
<br>
<a href="${pageContext.request.contextPath}/index">Back to index page</a>
</body>
</html>
