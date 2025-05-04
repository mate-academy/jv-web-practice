<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Yelinskyi</title>
</head>
<body>
<h1>All drivers!</h1>
<table>
    <tr>
        <td>ID</td>
        <td>NAME</td>
        <td>LICENSE</td>
        <td>DELETE</td>
    </tr>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <td><c:out value="${driver.id}"></c:out></td>
            <td><c:out value="${driver.name}"></c:out></td>
            <td><c:out value="${driver.licenseNumber}"></c:out></td>
            <td><a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}">delete this
                driver</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
