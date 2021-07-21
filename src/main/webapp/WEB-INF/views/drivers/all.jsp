<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
    <title>List of drivers</title>
</head>
<body>
<table>
    <tr>
        <td>id</td>
        <td>name</td>
        <td>license number</td>
        <td>delete</td>
    </tr>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <td><c:out value="${driver.id}"></c:out></td>
            <td><c:out value="${driver.name}"></c:out></td>
            <td><c:out value="${driver.licenseNumber}"></c:out></td>
            <td><a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}"></a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
