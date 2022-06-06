<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<head>
    <title>Taxi service</title>
    <meta content="text/html; charset=utf-8" />
    <style><%@include file="/WEB-INF/static/css/style.css"%></style>
</head>
<body>
<h2>List of cars: </h2>
<section>
    <table>
        <caption>List of cars</caption>
        <thead>
        <tr>
            <th>Id</th>
            <th>Model</th>
            <th>Manufacturer</th>
            <th>Country Manufacturer</th>
            <th>Driver name / License number</th>
            <th>Action</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="car" items="${cars}">
            <tr>
                <td><c:out value="${car.id}"/></td>
                <td><c:out value="${car.model}"/></td>
                <td><c:out value="${car.getManufacturer().getName()}"/></td>
                <td><c:out value="${car.getManufacturer().getCountry()}"/></td>
                <td>
                    <c:forEach items="${car.getDrivers()}" var="driver">
                        <c:out value="${driver.name}" />
                        <c:out value="${driver.licenseNumber}" /><br>
                    </c:forEach>
                </td>
                <td>
                    <a href="cars/delete?id=${car.id}">delete</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <br>
    <div>
        <a href="/">home</a>
    </div>
</section>
</body>
</html>
