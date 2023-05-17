<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all Car</title>
</head>
<body>
<h1>list of car</h1>
<c:forEach items="${cars}" var="car">
    <table>
        <tr>
            <h1>Id: ${car.id}</h1>
            <h1>Model: ${car.model}</h1>
            <h1>Manufacturer:
                <br>Id: ${car.manufacturer.id}
                <br>Name: ${car.manufacturer.name}
                <br>Country: ${car.manufacturer.country}</h1>
            <h1>List of Drivers: </h1>
        </tr>
        <c:forEach items="${car.drivers}" var="driver">
            <tr>
                <td><br>Id: ${driver.id}</td>
                <td><br>Name: ${driver.name}</td>
                <td><br>License Number: ${driver.licenseNumber}</td>
            </tr>
        </c:forEach>
    </table>
</c:forEach>
</body>
</html>
