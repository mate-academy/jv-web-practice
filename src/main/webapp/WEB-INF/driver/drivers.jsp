<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All Drivers</title>
</head>
<body>
<h1>List of Drivers</h1>
<table>
    <tr>
        <td>ID</td>
        <td>NAME</td>
        <td>LICENSE_NUMBER</td>
        <td>DELETE</td>
        <form action="${pageContext.request.contextPath}/">
            <input type="submit" value="Main page">
        </form>
    </tr>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <td><c:out value="${driver.id}"/></td>
            <td><c:out value="${driver.name}"/></td>
            <td><c:out value="${driver.licenseNumber}"/></td>
            <td><a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}">DELETE</a></td>
        </tr>
    </c:forEach>
    <form action="${pageContext.request.contextPath}/drivers/add">
        <input type="submit" value="Add a new Driver">
    </form>
</table>
</body>
</html>
