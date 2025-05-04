<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all drivers</title>
</head>
<body>
<h1>List of drivers:</h1><br>
<c:if test = "${empty drivers}">
    <h3>We have no drivers yet. <a href="${pageContext.request.contextPath}/drivers/add">Create one</a> first.</h3><br>
</c:if>
<c:if test = "${!empty drivers}">
    <table>
        <tr>
            <td><b>ID:</b></td>
            <td><b>NAME:</b></td>
            <td><b>LICENCE NUMBER:</b></td>
        </tr>
        <c:forEach items = "${drivers}" var = "driver">
            <tr>
                <td><c:out value = "${driver.id}" /></td>
                <td><c:out value = "${driver.name}" /></td>
                <td><c:out value = "${driver.licenseNumber}" /></td>
            </tr>
        </c:forEach>
    </table>
</c:if>
<br><a href="${pageContext.request.contextPath}/index">Back to index page</a>
</body>
</html>
