<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all Drivers</title>
</head>
<body>
<h1>List of Drivers</h1>
<h2>
<table>
    <tr>
        <td>Id</td>
        <td>Name</td>
        <td>LicenseNumber</td>
        <td>delete driver</td>
    </tr>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <td><c:out value="${driver.id}"/></td>
            <td><c:out value="${driver.name}"/></td>
            <td><c:out value="${driver.licenseNumber}"/></td>
            <td><a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}">delete this driver</a></td>
        </tr>
    </c:forEach>
</table>
</h2>
<form action="${pageContext.request.contextPath}/drivers/add">
    <input type="submit" value="Add new Driver">
</form>
<h2></h2>
<form action="${pageContext.request.contextPath}/index">
    <input type="submit" value="Return to First page">
</form>
</body>
</html>
