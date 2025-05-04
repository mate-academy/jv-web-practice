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
        <form action="${pageContext.request.contextPath}/drivers/create">
            <input type="submit" value="Add new Driver">
        </form>
    </tr>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <td><c:out value="${driver.id}"/></td>
            <td><c:out value="${driver.name}"/></td>
            <td><c:out value="${driver.licenseNumber}"/></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
