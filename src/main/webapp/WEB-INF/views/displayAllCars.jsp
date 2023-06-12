<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Get all Cars</title>
</head>
<body>
<h1>List of cars:</h1>
<table>
    <tr>
        <td>ID</td>
        <td>Model</td>
        <td>Manufacturer</td>
        <td>Drivers</td>
        <td>Delete</td>
    </tr>
    <jsp:useBean id="cars" scope="request" type="java.util.List"/>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.getId()}"/></td>
            <td><c:out value="${car.getModel()}"/></td>
            <td><c:out value="${car.getManufacturer().getName()}"/></td>
            <c:forEach items="${car.getDrivers()}" var="driver">
                <td><c:out value="${driver.getName()}"/><td>
            </c:forEach>
            <td>
                <button type="submit">
                    <a type="button"
                       href="${pageContext.request.contextPath}/cars/delete?id=${car.getId()}"
                    >Delete</a>
                </button>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
