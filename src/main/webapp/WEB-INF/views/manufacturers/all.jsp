<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All Manufacturers</title>
    <style>
        table, th, td {
            border: 1px solid black;
        }
    </style>
</head>
<body>
<H1>List of manufacturers:</H1>
<table>
    <tr>
        <td>Id</td>
        <td>Name</td>
        <td>Country</td>
        <td>Delete Manufacturer</td>
    </tr>
    <c:forEach items="${manufacturers}" var="manufacturer">
        <tr>
            <td>${manufacturer.id}</td>
            <td>${manufacturer.name}</td>
            <td>${manufacturer.country}</td>
            <td><a href="${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturer.id}">Delete this manufacturer</a></td>
        </tr>
    </c:forEach>
</table>
<br>
<H1>Add new Manufacturer</H1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
    Name <input type="text" name="name"><br>
    Country <input type="text" name="country"><br>
    <button type="submit">Add Manufacturer</button>
</form>
<br>
<br>
<ul>
    <li><a href="${pageContext.request.contextPath}/cars/all">List All Cars</a></li>
    <li><a href="${pageContext.request.contextPath}/drivers/all">List All Drivers</a></li>
    <li><a href="${pageContext.request.contextPath}/cars/drivers/add">Add Driver to Car</a></li>
</ul>
</body>
</html>
