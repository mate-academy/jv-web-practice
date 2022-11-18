<%@ taglib prefix="c" uri ="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All drivers</title>
</head>
<style>
    table { border: 1px solid;
        text-align: center;
        margin-top: 20%;
        margin-left: 40%;}
    tr, td {border: 1px solid;}
</style>
<body>
<table>
    <tr>
        <td>ID</td>
        <td>Name</td>
        <td>License number</td>
        <td>Delete driver</td>
    </tr>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <td><c:out value="${driver.getId()}"/></td>
            <td><c:out value="${driver.getName()}"/></td>
            <td><c:out value="${driver.getLicenseNumber()}"/></td>
            <td>
                <a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.getId()}">delete this driver</a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
