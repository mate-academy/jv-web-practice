<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Driver to Car</title>
</head>
<body>
<h1>Please, add driver to car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    Car <select name="car_id">
    <c:forEach items="${cars}" var="car">
        <option value="${car.id}">${car.model}</option>
    </c:forEach>
</select><br>
    Driver <select name="driver_id">
    <c:forEach items="${drivers}" var="driver">
        <option value="${driver.id}">${driver.name}</option>
    </c:forEach>
</select><br>
    <button type="submit">Add driver</button>
</form>
</body>
</html>
