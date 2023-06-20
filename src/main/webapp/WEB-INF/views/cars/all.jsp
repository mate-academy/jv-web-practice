<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cars</title>
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
<h1>List of all cars</h1>
<table>
    <tr>
        <td>car id</td>
        <td>car model</td>
        <td>manufacturer id</td>
        <td>manufacturer name</td>
        <td>manufacturer country</td>
        <td>drivers</td>
        <td>delete</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.id}" /></td>
            <td><c:out value="${car.model}" /></td>
            <td><c:out value="${car.manufacturer.id}" /></td>
            <td><c:out value="${car.manufacturer.name}" /></td>
            <td><c:out value="${car.manufacturer.country}" /></td>
            <td>
                <table>
                    <tr>
                        <th>driver id</th>
                        <th>driver name</th>
                        <th>driver license number</th>
                    </tr>
                    <c:forEach items="${car.drivers}" var="driver">
                    <tr>
                        <td><c:out value="${driver.id}"/></td>
                        <td><c:out value="${driver.name}"/></td>
                        <td><c:out value="${driver.licenseNumber}"/></td>
                    </tr>
                </c:forEach>
            </table>
            <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">delete</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
