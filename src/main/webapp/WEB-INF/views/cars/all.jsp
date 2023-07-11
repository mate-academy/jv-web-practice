<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<html>
<head>
    <title>All Cars</title>
    <style>
        body {
            background-color: #3f3f3f;
            color: #ffffff;
            font-family: Arial, sans-serif;
        }

        h1 {
            text-align: center;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 2em;
        }

        th, td {
            padding: 0.5em;
            border: 1px solid #ffffff;
            text-align: left;
        }

        th {
            background-color: #111;
        }

        a {
            color: #ffffff;
            text-decoration: none;
        }

        .back {
            margin-top: 1em;
            padding: 0.5em 2em;
            border: none;
            border-radius: 5px;
            background-color: #111;
            color: #ffffff;
            font-size: 16px;
            cursor: pointer;
        }
    </style>
</head>
<body>
<h1>All Cars</h1>
<table>
    <tr>
        <th>ID</th>
        <th>MODEL</th>
        <th>MANUFACTURER NAME</th>
        <th>MANUFACTURER COUNTRY</th>
        <th>DRIVERS</th>
        <th>DELETE</th>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.id}"/></td>
            <td><c:out value="${car.model}"/></td>
            <td><c:out value="${car.manufacturer.name}"/></td>
            <td><c:out value="${car.manufacturer.country}"/></td>
            <td>
                <c:forEach items="${car.drivers}" var="driver">
                    <c:out value="${driver.name}"/><br>
                </c:forEach>
            </td>
            <td>
                <a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">delete</a>
            </td>
        </tr>
    </c:forEach>
</table>
<button class="back" onclick="location.href='${pageContext.request.contextPath}/index'">Go to Home Page</button>
</body>
</html>