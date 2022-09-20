<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Drivers</title>
</head>
<body>
<h1>List of drivers</h1>
<table>
    <tr>Id</tr>
    <tr>Name</tr>
    <tr>License_number</tr>
    <c:forEach items="${drivers}" var="driver">
        <tr>
        <td><c:out value="${driver.id}"/></td>
        <td><c:out value="${driver.name}"/></td>
        <td><c:out value="${driver.licenseNumber}"/></td>
        <td><a href="${pageContext.request.contextPath}/drivers/deleteDriver?id=${driver.id}">delete</a></td>
        </tr>
    </c:forEach>
</table>
<button type="button" name="return" ><a href="${pageContext.request.contextPath}/drivers/createDriver">Create new driver</a></button>
<button type="button" name="return" ><a href="${pageContext.request.contextPath}/cars/addDriverToCar">Add driver to car</a></button>
<button type="button" name="return" ><a href="${pageContext.request.contextPath}/cars/displayCar">Return to table of cars</a></button>
<button type="button" name="return" ><a href="${pageContext.request.contextPath}/manufacturer/displayManufacturers">Go to table of manufacturers</a></button>

</body>
</html>
