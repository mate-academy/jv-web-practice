<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Add Driver to the Car</title>
</head>
<body>
<h1>Choose a car and a driver</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    Car<label>
    <select name="car.id">
        <c:forEach items="${cars}" var="car">
            <option value="${car.id}">"${car.model}" "${car.manufacturer.name}</option>
        </c:forEach>
    </select>
</label>
    Driver<label>
    <select name="driver_id">
        <c:forEach items="${drivers}" var="driver">
            <option value="${driver.id}">"${driver.name}" "${driver.licenseNumber}"</option>
        </c:forEach>
    </select>
</label>
    <button type="submit">Create</button>
</form>
</body>
</html>
