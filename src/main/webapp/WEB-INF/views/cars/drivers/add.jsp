<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Add driver to Car</title>
</head>
<body bgcolor="#fafad2">
<h1 align="center" style="color: lightsteelblue">Fill out the form below</h1>
<div align="center">
    <a href="/index">Home</a>
    <a href="/cars">Show cars</a>
    <a href="/drivers">Show drivers</a>
    <a href="/manufacturers">Show manufacturers</a>
</div>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    Enter the driver id to add: <input type="text" name="driver_id" style=position:absolute;left:15%;><br>
    <br>Enter the car id to add: <input type="text" name="car_id" style=position:absolute;left:15%;><br>
    <br><button type="submit" style=position:absolute;left:5%;>Confirm</button>
</form>
<br><br>
<div style="display: flex; justify-content: space-around" >
    <table border="1">
        <tr>
            <th>ID</th>
            <th>NAME</th>
            <th>LICENSE NUMBER</th>
        </tr>
        <c:forEach items="${drivers}" var="driver">
            <tr>
                <td><c:out value="${driver.id}"/></td>
                <td><c:out value="${driver.name}"/></td>
                <td><c:out value="${driver.licenseNumber}"/></td>
            </tr>
        </c:forEach>
    </table>

    <table border="1">
        <tr>
            <th>ID</th>
            <th>MODEL</th>
            <th>MANUFACTURER</th>
            <th>DRIVERS</th>
        </tr>
        <c:forEach items="${cars}" var="car">
            <tr>
                <td><c:out value="${car.id}"/></td>
                <td><c:out value="${car.model}"/></td>
                <td><c:out value="${car.manufacturer.id}"/></td>
                <td>
                    <c:forEach items="${car.drivers}" var="driver">
                        <c:out value="${driver.name} |"/>
                    </c:forEach>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
