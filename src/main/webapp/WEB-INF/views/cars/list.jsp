<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Web Practice</title>
</head>
    <body>
        <h1>All Cars List</h1>
        <table>
            <tr>
                <td>ID</td>
                <td>Model</td>
                <td>Manufacturer</td>
                <td>Drivers</td>
            </tr>
            <c:forEach items="${carsList}" var="car">
                <tr>
                    <td><c:out value="${car.id}" /></td>
                    <td><c:out value="${car.model}" /></td>
                    <td><c:out value="${car.manufacturer}" /></td>
                    <td><c:out value="${car.drivers}" /></td>
                    <td><button><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">delete car</a></button></td>
                    <td>
                        <form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
                            <input type="hidden" name="car_id" value="${car.id}" />
                            <input type="number" name="driver_id">
                            <button type="submit">add driver by id</button>
                        </form>
                    </td>
                </tr>
            </c:forEach>
            <form method="post" action="${pageContext.request.contextPath}/cars/add">
                <tr>
                    <td>#</td>
                    <td><input type="text" name="model"></td>
                    <td>By id: <input type="number" name="manufacturer_id"></td>
                    <td></td>
                    <td><button type="submit">add</button></td>
                </tr>
            </form>
        </table>
    </body>
</html>
