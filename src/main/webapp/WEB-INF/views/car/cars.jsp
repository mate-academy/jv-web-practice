<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style>
        .datatable {
            border: 1px solid black;
        }
    </style>
    <title>Drivers</title>
</head>
<body>
    <jsp:include page="/WEB-INF/views/head_menu.jsp"></jsp:include>
    <jsp:include page="add_car_form.jsp"></jsp:include>
    <hr>
    <h1>Cars</h1>
    <table class="datatable">
        <tr>
            <td><h2>Id</h2></td>
            <td><h2>Manufacturer</h2></td>
            <td><h2>Model</h2></td>
            <td><h2>Drivers</h2></td>
            <td><h2>Action</h2></td>
        </tr>
        <c:forEach items="${cars}" var="car">
            <tr>
                <td><h2><c:out value="${car.id}"/></h2></td>
                <td><h2><c:out value="${car.manufacturer.name}"/></h2></td>
                <td><h2><c:out value="${car.model}"/></h2></td>
                <td><a href="${pageContext.request.contextPath}/cars/drivers?id=${car.id}">Drivers</a></td>
                <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">Delete</a></td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
