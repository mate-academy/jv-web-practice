<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<form action="<c:url value="/index"/>">
    <input type="submit" value=" <- To main page " />
</form>
<h1>Add driver to car</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/cars/add">
    <label for="car_id"> Car Id:</label><br>
    <input type="number" id="car_id" name="car_id" required><br>
    <label for="driver_id">Driver Id:</label><br>
    <input type="text" id="driver_id" name="driver_id" required><br>
    <button type="submit">Create</button><br>
    <c:if test="${invalidInput == 'car'}">
        Can't find car id ${id} in database, try again
    </c:if>
    <c:if test="${invalidInput == 'driver'}">
        Can't find driver by id ${id} in database, try again
    </c:if>

</form>
</body>
</html>
