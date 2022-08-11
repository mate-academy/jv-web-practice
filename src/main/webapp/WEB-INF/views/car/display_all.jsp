<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Cars list</title>
</head>
<body>
<h2>All cars list</h2>
<form method="post" action="${pageContext.request.contextPath}/cars">
    <table>
        <tr>
            <td><b>ID</b></td>
            <td><b>Model</b></td>
            <td><b>Manufacturer name</b></td>
            <td><b>Manufacturer country</b></td>
            <td><b>Assigned drivers</b></td>
        </tr>
        <c:forEach items="${cars}" var="car">
            <tr>
                <td><c:out value="${car.id}" /></td>
                <td><c:out value="${car.model}" /></td>
                <td><c:out value="${car.manufacturer.name}" /></td>
                <td><c:out value="${car.manufacturer.country}" /></td>
                <td><c:forEach items="${car.drivers}" var="driver">
                        <c:out value="${driver.name}" /> <c:out value="${driver.licenseNumber}" />
                        <br>
                    </c:forEach>
                </td>
                <td>
                    <a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">
                        Delete this car</a>
                </td>
            </tr>
        </c:forEach>
    </table>
    <br>
    <br>
    <a href="${pageContext.request.contextPath}/">Return to main menu</a>
    <br>
</form>
</body>
</html>
