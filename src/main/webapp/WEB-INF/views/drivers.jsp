<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all Drivers</title>
</head>
<body>
<h1>List of Drivers</h1>
<table>
    <tr>
        <td>Id</td>
        <td>Name</td>
        <td>LicenseNumber</td>
        <td>delete driver</td>
        <form action="${pageContext.request.contextPath}/index">
            <input type="submit" value="Return to First page">
        </form>
    </tr>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <td><c:out value="${driver.id}"/></td>
            <td><c:out value="${driver.name}"/></td>
            <td><c:out value="${driver.licenseNumber}"/></td>
            <td><a href="${pageContext.request.contextPath}/deleteDriver?id=${driver.id}">delete this driver</a></td>
        </tr>
    </c:forEach>
    <form action="${pageContext.request.contextPath}/addDriver">
        <input type="submit" value="Add new Driver">
    </form>
</table>
</body>
</html>
