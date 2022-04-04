<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Get all cars</title>
    </head>
    <body>
        <h1>List of cars:</h1>
        <table>
            <tr>
                <td>DELETE  /</td>
                <td>ID  /</td>
                <td>MODEL  /</td>
                <td>MANUFACTURER  /</td>
                <td>MANUFACTURER COUNTRY  /</td>
                <td>DRIVER NAME  /</td>
                <td>DRIVER LICENSE /</td>
            </tr>
            <c:forEach items="${car}" var="car">
                <tr>
                    <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">delete this car</a></td>
                    <td><c:out value="${car.id}" /></td>
                    <td><c:out value="${car.model}" /></td>
                    <td><c:out value="${car.manufacturer.name}" /></td>
                    <td><c:out value="${car.manufacturer.country}" /></td>
                     <c:forEach items="${car.drivers}" var="driver">
                        <td><c:out value="${driver.name}" /></td>
                        <td><c:out value="${driver.licenseNumber}" /></td>
                         <tr></tr>
                         <td></td>
                         <td></td>
                         <td></td>
                         <td></td>
                         <td></td>
                    </c:forEach>
                </tr>
            </c:forEach>
        </table>
        <h1></h1>
        <form method="get" action="${pageContext.request.contextPath}/drivers/addDriverToCar">
            Add driver to car <button type="submit">Add driver</button>
        </form>
        <h1></h1>
        <form method="get" action="${pageContext.request.contextPath}/">
            Home page <button type="submit">Go</button>
        </form>
    </body>
</html>
