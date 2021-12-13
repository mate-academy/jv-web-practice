<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<a href="${pageContext.request.contextPath}/">Main page</a>
<a href="${pageContext.request.contextPath}/drivers/add">Create drivers</a>
<h1>List of drivers:</h1>
<table>
    <tr>
        <td>ID</td>
        <td>NAME</td>
        <td>LICENSE NUMBER</td>
    </tr>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <td><c:out value="${driver.id}"${pageContext.request.contextPath}/></td>
            <td><c:out value="${driver.name}"${pageContext.request.contextPath}/></td>
            <td><c:out value="${driver.licenseNumber}"${pageContext.request.contextPath}/></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
