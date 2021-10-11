<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all drivers</title>
</head>
<body>
<h1>List of drivers:</h1>
<style>
    table, td {
        border: 1px solid black;
        border-collapse: collapse;
        text-align: center;
    }
    td {
        padding: 5px;
    }
    tr:nth-child(even) {
        background-color: #DDDDDD;
    }
</style>
<table>
    <tr>
        <td>ID</td>
        <td>NAME</td>
        <td>LICENSE NUMBER</td>
        <td>DELETE</td>
    </tr>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <td><c:out value="${driver.id}" /></td>
            <td><c:out value="${driver.name}" /></td>
            <td><c:out value="${driver.licenseNumber}" /></td>
            <td><a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}"
                   onclick="if(!confirm('Are you sure that you want to delete the driver?')) return false">
                    delete this driver
            </a></td>
        </tr>
    </c:forEach>
</table>
<br><a href="${pageContext.request.contextPath}/">Back to main</a>
</body>
</html>
