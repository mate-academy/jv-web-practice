<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>All cars</title>
    </head>
    <body>
        <h2><i>List cars</i></h2>
        <table>
            <tr>
                <td>ID</td>
                <td>Model</td>
                <td>Manufacturer</td>
                <td>Drivers</td>
            </tr>
        <jsp:useBean id="cars" scope="request" type="java.util.List"/>
        <c:forEach items="${cars}" var="car">
            <tr>
                <td> <c:out value="${car.id}"/> </td>
                <td> <c:out value="${car.model}"/> </td>
                <td> <c:out value="${car.manufacturer.name}"/> </td>
                <td> <c:out value="${car.drivers.size()}"/> </td>
            </tr>
        </c:forEach>
        </table>
        <h3><i>Delete car by ID</i></h3>
        <form method="get" action="${pageContext.request.contextPath}/del/car">
            Car ID <label> <input type="number" name="car_id"/> </label>
            <button type="submit">Delete</button>
        </form>
    </body>
</html>
