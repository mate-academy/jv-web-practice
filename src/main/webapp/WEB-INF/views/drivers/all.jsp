<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All Drivers</title>
    <style>
        table, th, td {
            border: 1px solid black;
        }
    </style>
</head>
<body>
<H1>List of drivers:</H1>
<table>
    <tr>
        <td>Id</td>
        <td>Name</td>
        <td>License Number</td>
        <td>Delete Driver</td>
    </tr>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <td>${driver.id}</td>
            <td>${driver.name}</td>
            <td>${driver.licenseNumber}</td>
            <td><a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}">Delete this driver</a></td>
        </tr>
    </c:forEach>
</table>
<br>
<H1>Add new Driver</H1>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    Name <input type="text" name="name"><br>
    License Number <input type="text" name="licenseNumber"><br>
    <button type="submit">Add Driver</button>
</form>
<br>
<br>
<ul>
    <li><a href="${pageContext.request.contextPath}/cars/all">List All Cars</a></li>
    <li><a href="${pageContext.request.contextPath}/manufacturers/all">List All Manufacturers</a></li>
    <li><a href="${pageContext.request.contextPath}/cars/drivers/add">Add Driver to Car</a></li>
</ul>
</body>
</html>
