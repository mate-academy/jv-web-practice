<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="d" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All Cars</title>
</head>
<body>
<h1>List Cars</h1>
<table>
    <tr>
        <td>Id</td>
        <td>Model</td>
        <td>Manufacturer</td>
        <td>Drivers</td>
        <td>Deleted</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.id}"/></td>
            <td><c:out value="${car.model}"/></td>
            <td><c:out value="${car.manufacturer.name}"/></td>
            <td>
                <table>
                    <d:forEach items="${car.drivers}" var="driver">
                        <tr>
                            <td><d:out value="${driver.name}"/></td>
                            <td><d:out value="${driver.licenseNumber}"/></td>
                        </tr>
                    </d:forEach>
                </table>
            </td>
            <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">Delete this car</a></td>
        </tr>
    </c:forEach>
</table>
<br>
<form method="get" action="${pageContext.request.contextPath}/cars/add">
    <button type="submit">Create a car</button>
</form>
<br>
<form method="get" action="${pageContext.request.contextPath}/cars/drivers/add">
    <button type="submit">Add driver to car</button>
</form>
</body>
</html>