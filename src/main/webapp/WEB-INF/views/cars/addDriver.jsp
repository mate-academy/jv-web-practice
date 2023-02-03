<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
    <title>Adding driver to car</title>
</head>
<body>
<h1>Add driver to car:</h1>
<form action="${pageContext.request.contextPath}/cars/drivers/add" method="post">
    <label for="car_id">Choose a car:</label>
    <select name="car_id" id="car_id">
        <c:forEach items="${cars}" var="car">
            <option value=${car.getId()}>Car id: ${car.getId()}; Car model: ${car.getModel()}</option>
        </c:forEach>
    </select><br><br>
    <label for="driver_id">Choose a driver:</label>
    <select name="driver_id" id="driver_id">
        <c:forEach items="${drivers}" var="driver">
            <option value=${driver.getId()}>Driver name: ${driver.getName()}; Driver license number:${driver.getLicenseNumber()}</option>
        </c:forEach>
    </select><br><br>
    <input type="submit" value="Submit">
</form>
</body>
</html>
