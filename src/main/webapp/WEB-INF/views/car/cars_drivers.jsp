<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Driver cars</title>
</head>
<body>
    <jsp:include page="/WEB-INF/views/head_menu.jsp"></jsp:include>
    <h2>Car id: ${car.id}</h2>
    <h2>Car model: ${car.model}</h2>
    <h2>Car manufacturer: ${car.manufacturer.name}</h2>
    <hr>
    <h2> Please the form below, to add driver to car</h2>
    <form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
        <input type="hidden" name="car_id" value="${car.id}" />
        Driver id: <input type="number" name="driver_id">
        <button type="submit">Add driver</button>
    </form>
    <hr>
    <h2>Car drivers:</h2><br>
    <table class="datatable">
        <tr>
            <td><h3>Id</h3></td>
            <td><h3>Name</h3></td>
            <td><h3>License number</h3></td>
            <td><h3>Action</h3></td>
        </tr>
        <c:forEach items="${car.drivers}" var="driver">
            <tr>
                <td><h3><c:out value="${driver.id}"/></h3></td>
                <td><h3><c:out value="${driver.name}"/></h3></td>
                <td><h3><c:out value="${driver.licenseNumber}"/></h3></td>
                <td><h3><a href="/cars/drivers/delete?car_id=${car.id}&driver_id=${driver.id}">Remove</a></h3></td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
