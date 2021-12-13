<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Adding a driver to car</title>
    </head>
    <body>
        Cars:<br>
        <c:forEach items="${cars}" var="car">
            <c:out value="ID: ${car.id}, "/>
            <c:out value="model: ${car.model}, "/>
            <c:out value="manufacturer: ${car.manufacturer.name}"/><br>
        </c:forEach><br>
        Drivers:<br>
        <c:forEach items="${drivers}" var="driver">
            <c:out value="ID: ${driver.id}, "/>
            <c:out value="name: ${driver.name}, "/>
            <c:out value="license number: ${driver.licenseNumber}"/><br>
        </c:forEach><br>
        Add driver to car:
        <form method="post" action="${pageContext.request.contextPath}/cars/drivers">
            Car ID <input type="number" name="car_id"><br>
            Driver ID <input type="number" name="driver_id"><br>
            <button type="submit">Add</button><br>
        </form>
    </body>
</html>
