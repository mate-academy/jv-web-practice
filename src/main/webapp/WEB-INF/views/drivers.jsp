<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE>
<html lang="en">
<head>
    <title>Drivers</title>
</head>
<body>
<div class="nav-bar">
    <a href="${pageContext.request.contextPath}/">Home</a>
    <a href="${pageContext.request.contextPath}/manufacturers">Manufacturers</a>
    <a href="${pageContext.request.contextPath}/drivers">Drivers</a>
    <a href="${pageContext.request.contextPath}/cars">Cars</a>
</div>

<h1>Add new driver:</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    Name <input type="text" name="name">
    License number <input type="text" name="licenseNumber">
    <button type="submit">Add driver</button>
</form>

<h1>Update an existing driver:</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/update">
    Id <input type="text" name="id">
    Name <input type="text" name="name">
    License number <input type="text" name="licenseNumber">
    <button type="submit">Update driver</button>
</form>

<h1>All drivers:</h1>
<table>
    <tr>
        <td>Id</td>
        <td>Name</td>
        <td>License number</td>
    </tr>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <td><c:out value="${driver.id}"/></td>
            <td><c:out value="${driver.name}"/></td>
            <td><c:out value="${driver.licenseNumber}"/></td>
            <td><a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}">delete</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
