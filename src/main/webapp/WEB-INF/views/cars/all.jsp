<%@ page import="mate.model.Manufacturer" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>All drivers</title>
    <style><%@include file="/WEB-INF/style/display_all.css"%></style>
</head>
<body>
<div class="scroll-table">
    <h1>List of all cars :</h1>
    <table>
        <thead>
        <tr>
            <th>Id</th>
            <th>Model</th>
            <th>Manufacturer</th>
            <th>Drivers</th>
        </tr>
        </thead>
    </table>
    <div class="scroll-table-body">
        <table>
            <tbody>
            <c:forEach items="${cars}" var="car">
                <tr>
                    <td><c:out value="${car.id}" /></td>
                    <td><c:out value="${car.model}" /></td>
                    <td><c:out value="${car.manufacturer.name}" /></td>
                    <td>
                        <c:forEach items="${car.drivers}" var="driver">
                            <c:out value="${driver.name}"></c:out>
                        </c:forEach>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>

<h1>Delete car by ID</h1>
<form method="post" action="${pageContext.request.contextPath}/cars">
    Id <input type="number" name="car_id">
    <button type="submit">Delete car</button>
</form>
</body>
</html>
