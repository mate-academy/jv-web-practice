<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all drivers</title>
</head>
<body>
    <tr>
        <td>ID</td>
        <td>Name</td>
        <td>License number</td>
        <td>Delete</td>
    </tr>
    </br>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <td><c:out value="${driver.id}"/></td>
            <td><c:out value="${driver.name}"/></td>
            <td><c:out value="${driver.licenseNumber}"/></td>
            <td><a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}">Delete driver</a></td>
        </tr>
        </br>
    </c:forEach>
</body>
</html>
