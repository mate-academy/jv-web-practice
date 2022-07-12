<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All cars with drivers</title>
</head>
<body>
<h2><a href="/">Main page</a> </h2>
<h1>List all cars with drivers:</h1>
<table>
    <tr>
        <td>id</td>
        <td>manufacturer</td>
        <td>model</td>
        <td>delete</td>
        <td>driver_id</td>
        <td>driver_name</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.id}" /></td>
            <td><c:out value="${car.manufacturer.name}" /></td>
            <td><c:out value="${car.model}" /></td>
            <td><a href="/cars/delete?id=${car.id}">delete</a></td>
            <c:forEach items="${car.drivers}" var="carInList">
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td><c:out value="${carInList.id}" /></td>
                    <td><c:out value="${carInList.name}" /></td>
                </tr>
            </c:forEach>
        </tr>
    </c:forEach>
</table>
</body>
</html>
