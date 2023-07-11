<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<html>
<head>
    <title>All Drivers</title>
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
<h1>All Drivers</h1>
<table>
    <tr>
        <th>ID</th>
        <th>NAME</th>
        <th>LICENSE NUMBER</th>
        <th>DELETE</th>
    </tr>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <td><c:out value="${driver.id}"/></td>
            <td><c:out value="${driver.name}"/></td>
            <td><c:out value="${driver.licenseNumber}"/></td>
            <td>
                <a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}">delete</a>
            </td>
        </tr>
    </c:forEach>
</table>
<button class="back" onclick="location.href='${pageContext.request.contextPath}/index'">Go to Home Page</button>
</body>
</html>