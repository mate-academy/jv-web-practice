<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
    <form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
        <label for="cars">Select car:</label><br/>
        <select id = "cars" name = "car_id" required>
            <c:forEach items="${cars}" var="car">
                <option value="${car.id}"><c:out value="${car.model}" /></option>
            </c:forEach>
        </select>
        <br>
        <label for="drivers">Select driver:</label><br/>
        <select id = "drivers" name= "driver_id" required>
            <c:forEach items="${drivers}" var="driver">
                <option value="${driver.id}"><c:out value="${driver.name}" /></option>
            </c:forEach>
        </select>
        <br>
        <button type="submit">Add driver to car</button>
    </form>
</body>
</html>
