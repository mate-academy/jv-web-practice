<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>List of Cars</title>
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
<h1>List of Cars</h1>
<table>
    <tr>
        <th>ID</th>
        <th>Model</th>
        <th>Manufacturer</th>
        <th>Drivers</th>
        <th></th>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.id}"></c:out></td>
            <td><c:out value="${car.model}"></c:out></td>
            <td><c:out value="${car.manufacturer.name}"></c:out></td>
            <td>
                <c:forEach items="${car.drivers}" var="driver" varStatus="status">
                    <c:out value="${driver.name}"></c:out><c:if test="${not status.last}">, </c:if>
                </c:forEach>
            </td>
            <td><a class="delete-link" href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">Delete Car</a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
