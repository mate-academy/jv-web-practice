<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Drivers</title>
    <style>
        table {
            border-collapse: collapse;
            width: 100%;
        }

        th, td {
            border: 1px solid black;
            padding: 8px;
        }

        table.inner-table {
            border-collapse: collapse;
            width: 100%;
        }

        table.inner-table th, table.inner-table td {
            border: 1px solid black;
            padding: 8px;
        }
    </style>
</head>
<body>
<h1>List of all drivers</h1>
<table>
    <tr>
        <td>id</td>
        <td>name</td>
        <td>license number</td>
        <td>delete</td>
    </tr>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <td><c:out value="${driver.id}" /></td>
            <td><c:out value="${driver.name}" /></td>
            <td><c:out value="${driver.licenseNumber}" /></td>
            <td><a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}">delete</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
