<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/views/index.jsp" %>
<html>
<head>
    <title>All drivers</title>
</head>
<body>
<h3>All drivers</h3>
<table>
    <tr>
        <td><b>ID</b></td>
        <td><b>Name</b></td>
        <td><b>License number</b></td>
        <td><b>Delete driver</b></td>
    </tr>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <td><c:out value="${driver.id}" /></td>
            <td><c:out value="${driver.name}" /></td>
            <td><c:out value="${driver.licenseNumber}" /></td>
            <td><a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}">Delete</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
