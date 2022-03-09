<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>All Drivers</h1>
<br>
<table>
    <tr>
        <td>ID</td>
        <td>NAME</td>
        <td>Licence</td>
    </tr>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <td><c:out value="${driver.id}" /></td>
            <td><c:out value="${driver.name}" /></td>
            <td><c:out value="${driver.licenseNumber}" /></td>
        </tr>
    </c:forEach>
    <br>
    <a href="${pageContext.request.contextPath}/index">go to the main page</a><br>
</table>
</body>
</html>
