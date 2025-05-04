<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>all drivers</title>
    <style><%@include file="/WEB-INF/views/css/styles.css"%></style>
</head>
<body>
<h2>List drivers!</h2>
<table>
    <td>ID</td>
    <td>NAME</td>
    <td>LICENSE NUMBER</td>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <td><c:out value="${driver.id}" /></td>
            <td><c:out value="${driver.name}" /></td>
            <td><c:out value="${driver.licenseNumber}" /></td>
            <td>
                <a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}">delete </a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>