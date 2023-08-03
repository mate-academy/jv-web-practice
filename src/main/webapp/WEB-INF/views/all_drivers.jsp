<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>List of drivers</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }

        h1 {
            text-align: center;
        }

        table {
            border-collapse: collapse;
            width: 100%;
        }

        th, td {
            border: 1px solid #ccc;
            padding: 8px;
            text-align: left;
        }

        th {
            background-color: #007bff;
            color: #fff;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        /* Custom styles for the delete link */
        .delete-link {
            display: inline-block;
            padding: 6px 12px;
            background-color: #dc3545;
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
        }
        .delete-link:hover {
            background-color: #c82333;
        }
    </style>
</head>
<body>
<h1>List of drivers</h1>
<table>
    <tr>
        <th>Id</th>
        <th>Name</th>
        <th>Licence Number</th>
        <th></th>
    </tr>
    <c:forEach items="${drivers}" var="driver" varStatus="status">
        <tr>
            <td><c:out value="${driver.id}"></c:out></td>
            <td><c:out value="${driver.name}"></c:out></td>
            <td><c:out value="${driver.licenseNumber}"></c:out></td>
            <td><a class="delete-link" href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}">Delete Driver</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
