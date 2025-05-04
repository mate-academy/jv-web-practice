<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all drivers</title>
</head>
<body>
<h1>New driver:</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/create">
    Name <input type="text" name="driver_name"><br>
    LicenseNumber <input type="text" name="license_number"><br>
    <button type="submit">Add</button>
</form>
<br>
<h1>List of drivers:</h1>
<table>
    <tr>
        <td>ID</td>
        <td>Name</td>
        <td>licenseNumber</td>
    </tr>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <td><c:out value="${driver.id}"/></td>
            <td><c:out value="${driver.name}"/></td>
            <td><c:out value="${driver.licenseNumber}"/></td>
            <td><a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}"/>delete this driver</td>
        </tr>
    </c:forEach>
</table>
<br>
<h1>Add driver to car:</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    Driver ID <input type="number" name="driver_id"><br>
    Car ID <input type="number" name="car_id"><br>
    <button type="submit">Add</button>
</form>
</body>
</html>
