<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
    <h1>Add driver to car:</h1><br>
    <form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
        <label for="cars">Car:</label><br>
        <select id="cars" name=car_id>
            <c:forEach items="${cars}" var="car">
                <option value="${car.id}">${car.id} ${car.model}, ${car.manufacturer.name}</option>
            </c:forEach>
        </select>
        <br>
        <label for="drivers">Driver:</label><br>
        <select id="drivers" name=driver_id>
            <c:forEach items="${drivers}" var="driver">
                <option value="${driver.id}">${driver.id} ${driver.name}</option>
            </c:forEach>
        </select>
        <br>
        <button type="submit">Submit</button>
        <button type="reset">Reset</button>
    </form>
    <br><a href="${pageContext.request.contextPath}/index">Back to start page</a>
</body>
</html>
