<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cars</title>
</head>
<body>
    <%@include file="/WEB-INF/views/header.jsp"%><br>
    <h1>List of cars!</h1>
    <table>
        <tr>
            <td>ID</td>
            <td>MODEL</td>
            <td>MANUFACTURER</td>
            <td>DRIVER</td>
        </tr>

        <c:forEach items="${cars}" var="car">
            <tr>
                <td><c:out value="${car.id}" /></td>
                <td><c:out value="${car.model}" /></td>
                <td><c:out value="${car.manufacturer.name}" /></td>
                <td><c:out value="${car.getDrivers()}" /></td>
                <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">
                    <input type="button" value="Delete Car"></a></td>
                    <%--<td><a href="${pageContext.request.contextPath}/cars/driver/delete?id=${driver.id}">
                    <input type="button" value="Delete Driver"></a></td>--%>
            </tr>
        </c:forEach>
    </table>
    <form method="get" action="${pageContext.request.contextPath}/cars/edit">
        <button type="submit">Edit</button>
    </form>
    <form method="get" action="${pageContext.request.contextPath}/cars/add">
        <button type="submit">Add driver to car</button>
    </form>
</body>
</html>