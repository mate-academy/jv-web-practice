<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Manufacturers</title>
    <style>
        table, th, td {
            border: 2px solid #333;
            border-collapse: collapse;
            text-align: center;
            width: 100%;
        }

        td {
            width: 33%;
        }
        .topnav {
            background-color: #338999;
            display: flex;
            justify-content: space-between;
        }

        .topnav a {
            padding: 14px 16px;
            text-decoration: none;
            font-size: 17px;
        }

        .topnav a.active {
            color: white;
        }
    </style>
</head>
<body>
<div class="topnav">
    <a class="active" href="${pageContext.request.contextPath}/">Main</a>
    <a class="active" href="${pageContext.request.contextPath}/cars">Cars</a>
    <a class="active" href="${pageContext.request.contextPath}/drivers">Drivers</a>
    <a class="active" href="${pageContext.request.contextPath}/manufacturers">Manufacturers</a>
</div>
<h1 style="text-align: center">Manufacturer List</h1>
<table>
    <tr>
        <td>ID</td>
        <td>NAME</td>
        <td>COUNTRY</td>
        <td>DELETE MANUFACTURER</td>
    </tr>
    <c:forEach items="${manufacturers}" var="manufacturer">
        <tr>
            <td><c:out value="${manufacturer.id}"/></td>
            <td><c:out value="${manufacturer.name}"/></td>
            <td><c:out value="${manufacturer.country}"/></td>
            <td><a href="${pageContext.request.contextPath}/manufacturers/delete?manufacturerId=${manufacturer.id}">DELETE MANUFACTURER</a></td>
        </tr>
    </c:forEach>
</table>
<h2>Add Manufacturer</h2>
<form method="post" name="addManufacturerForm" action="${pageContext.request.contextPath}/manufacturers/add">
    Name <input type="text" name="manufacturerName">
    Country <input type="text" name="manufacturerCountry">
    <button type="submit">Add Manufacturer</button>
</form>
<h2>Update Manufacturer</h2>
<form method="post" name="updateManufacturerForm" action="${pageContext.request.contextPath}/manufacturers/update">
    Id.Name <select name="manufacturerId">
    <c:forEach items="${manufacturers}" var="manufacturer">
        <option value="${manufacturer.id}"><c:out value="${manufacturer.id}"/>.<c:out value="${manufacturer.name}"/></option>
    </c:forEach>
</select>
    Name <input type="text" name="manufacturerName">
    Country <input type="text" name="manufacturerCountry">
    <button type="submit">Update Manufacturer</button>
</form>
</body>
</html>
