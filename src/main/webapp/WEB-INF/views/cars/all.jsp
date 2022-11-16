<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cars</title>
    <style>
        form {
            display: inline-block;
        }
        input {
            width: 150px;
        }
        table, th, td {
            border: 1px solid;
            text-align: center;
        }
    </style>
</head>
    <body>
        <h2>All cars</h2>
        <table>
            <tr>
                <th>ID</th>
                <th>Manufacturer</th>
                <th>Model</th>
                <th>Drivers</th>
                <th>Action</th>
            </tr>
            <c:forEach items="${cars}" var="car">
                <tr>
                    <td><c:out value="${car.id} "/></td>
                    <td><c:out value="${car.manufacturer.name} "/></td>
                    <td><c:out value="${car.model} "/></td>
                    <td><c:forEach items="${car.drivers}" var="driver">
                        <c:out value="${driver.name} "/>
                    </c:forEach> </td>
                    <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">
                        delete car</a> </td>
                </tr>
            </c:forEach>
        </table>
        <br>
        <form action="${pageContext.request.contextPath}/cars/drivers/add">
            <input type="submit" value="Add driver to car">
        </form>
        <form action="${pageContext.request.contextPath}/cars/drivers/delete">
            <input type="submit" value="Delete driver from car">
        </form>
        <br>
        <form action="${pageContext.request.contextPath}/cars/add">
            <input type="submit" value="Add new car">
        </form>
        <form action="${pageContext.request.contextPath}/index">
            <input type="submit" value="Home page">
        </form>
    </body>
</html>
