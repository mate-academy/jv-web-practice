<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<html>
<head>
    <title>Drivers</title>
</head>
<body>
<jsp:include page="/WEB-INF/views/header.jsp"/>
<table>
    <tr>
        <td>ID</td>
        <td>NAME</td>
        <td>LICENSE</td>
    </tr>
<c:forEach items="${drivers}" var="driver">
    <tr>
        <td><c:out value="${driver.getId()}"/></td>
        <td><c:out value="${driver.getName()}"/></td>
        <td><c:out value="${driver.getLicenseNumber()}"/></td>
    </tr>
</c:forEach>
</table>
<br>
<a href="${pageContext.request.contextPath}/drivers/add">new driver</a>
</body>
</html>
