<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<h1>Add driver to car:</h1><br>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    <label for="cars">Car:</label><br>
    <select id="cars" name=car_id>
        <c:forEach items = "${cars}" var = "car">
            <option value="${car.id}">${car.id}${car.manufacturer.name} ${car.model}</option>
        </c:forEach>
    </select>
    <br>
    <label for="drivers">Driver:</label><br>
    <select id="drivers" name=driver_id>
        <c:forEach items = "${drivers}" var = "driver">
            <option value="${driver.id}">${driver.id} ${driver.name}</option>
        </c:forEach>
    </select>
    <button type="submit">Submit</button>
    <button type="reset">Reset</button>
</form>
<br><a href="${pageContext.request.contextPath}/index">Back to index page</a>
</body>
</html>
