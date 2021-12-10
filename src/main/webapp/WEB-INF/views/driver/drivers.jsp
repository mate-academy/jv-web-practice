<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Drivers</title>
</head>
<body>
<h1>Drivers page</h1>
<form method="get" action="${pageContext.request.contextPath}/drivers/add">
    <table>
        <tr>
            <td>Driver name</td>
            <td>License number</td>
        </tr>
        <c:forEach items="${drivers}" var="driver">
            <tr>
                <td><c:out value="${driver.name}"/></td>
                <td><c:out value="${driver.licenseNumber}"/></td>
                <td><a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}">Delete driver</a> </td>
            </tr>
        </c:forEach>
        <tr></tr>
        <tr>
            <td><button type="submit">Add new driver</button></td>
        </tr>
    </table>
</form>
</body>
</html>
