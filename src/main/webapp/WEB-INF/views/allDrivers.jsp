<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>all drivers</title>
</head>
<body>
<h2><a href="${pageContext.request.contextPath}/main">MAIN PAGE</a></h2>
<h2><a href="${pageContext.request.contextPath}/drivers/add">add driver</a></h2>
<p>List of drivers:</p>
<table>
    <tr>
        <td>ID</td>
        <td>NAME</td>
        <td>LICENSE NUMBER</td>
    </tr>
    <c:forEach items="${drivers}" var="driver">
    <tr>
        <td><c:out value="${driver.id}"/></td>
        <td><c:out value="${driver.name}"/></td>
        <td><c:out value="${driver.licenseNumber}"/></td>
        <td><a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}">delete</a></td>
        </c:forEach>
    </tr>
</table>
</body>
</html>
