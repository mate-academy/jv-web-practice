<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE>
<html lang="en">
<head>
    <title>Manufacturers</title>
</head>
<body>
<div class="nav-bar">
    <a href="${pageContext.request.contextPath}/">Home</a>
    <a href="${pageContext.request.contextPath}/manufacturers">Manufacturers</a>
    <a href="${pageContext.request.contextPath}/drivers">Drivers</a>
    <a href="${pageContext.request.contextPath}/cars">Cars</a>
</div>

<h1>Add new manufacturer:</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
    Name <input type="text" name="name">
    Country <input type="text" name="country">
    <button type="submit">Add manufacturer</button>
</form>

<h1>Update an existing manufacturer:</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/update">
    Id <input type="text" name="id">
    Name <input type="text" name="name">
    Country <input type="text" name="country">
    <button type="submit">Update manufacturer</button>
</form>

<h1>All manufacturers:</h1>
<table>
    <tr>
        <td>Id</td>
        <td>Name</td>
        <td>Country</td>
    </tr>
    <c:forEach items="${manufacturers}" var="manufacturer">
        <tr>
            <td><c:out value="${manufacturer.id}"/></td>
            <td><c:out value="${manufacturer.name}"/></td>
            <td><c:out value="${manufacturer.country}"/></td>
            <td><a href="${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturer.id}">delete</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
