<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cars</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body class="w3-light-grey">
<div class="w3-container w3-center w3-card-4">
    <div class="w3-container w3-center w3-green">
        <h2>Create car</h2>
    </div>
    <form method="post" action="/cars/add">
        Model: <input type="text" name="model"/> <br/>
        Manufacturer ID: <input type="text" name="manufacturer_id"/> <br/>
        <input type="submit" value="Create"/>
    </form>
</div>
<div class="w3-container w3-center w3-card-4">
    <div class="w3-container w3-center w3-green">
        <h2>Add driver to car</h2>
    </div>
    <form method="post" action="/cars/drivers/add">
        Car ID: <input type="text" name="car_id"/> <br/>
        Driver ID: <input type="text" name="driver_id"/> <br/>
        <input type="submit" value="Add Driver"/>
    </form>
</div>
<div class="w3-container w3-center w3-card-4">
    <div class="w3-container w3-center w3-green">
        <h2>All cars</h2>
    </div>
    <table class="w3-table-all w3-small">
        <tr>
            <td>ID</td>
            <td>Model</td>
            <td>Manufacturer (id-Name)</td>
            <td>Drivers (id-Name)</td>
            <td></td>
        </tr>
        <c:forEach items="${cars_list}" var="car">
            <tr>
                <td><c:out value="${car.id}"/></td>
                <td><c:out value="${car.model}"/></td>
                <td><c:out value="${car.manufacturer.id}-${car.manufacturer.name}"/></td>
                <td>
                    <c:forEach items="${car.drivers}" var="driver">
                        <c:out value="${driver.id}-${driver.name}"/>
                        <button type="submit" class="w3-btn w3-green w3-round-large w3-margin-bottom"
                                onclick="location.href='/cars/drivers/delete?car_id=${car.id}&driver_id=${driver.id}'">
                            Remove
                        </button>
                        <br>
                    </c:forEach>
                </td>
                <td>
                    <button type="submit" class="w3-btn w3-green w3-round-large w3-margin-bottom"
                            onclick="location.href='/cars/delete?id=${car.id}'">
                        Delete
                    </button>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
<div class="w3-container w3-center w3-card-4 w3-pudding">
    <div class="w3-container w3-grey w3-opacity w3-right-align w3-padding">
        <button class="w3-btn w3-round-large" onclick="location.href='/drivers'">Show all drivers</button>
    </div>
    <div class="w3-container w3-grey w3-opacity w3-right-align w3-padding">
        <button class="w3-btn w3-round-large" onclick="location.href='/manufacturers'">Show all manufacturers</button>
    </div>
</div>
</body>
</html>
