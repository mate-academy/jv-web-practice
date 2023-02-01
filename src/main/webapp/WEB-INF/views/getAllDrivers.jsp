<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get All Drivers</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/drivers/getAllDrivers">
    <table>
        <tr>
            <td>ID</td>
            <td>NAME</td>
            <td>LICENSE NUMBER</td>
            <td>Delete</td>
        </tr>
        <c:forEach items="${driverList}" var="driver">
            <tr>
                <td><c:out value="${driver.id}" /></td>
                <td><c:out value="${driver.name}" /></td>
                <td><c:out value="${driver.licenseNumber}" /></td>
                <td><a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}"> delete this driver </a> </td>
            </tr>
        </c:forEach>
    </table>
    <br>
</form>
</body>
</html>
