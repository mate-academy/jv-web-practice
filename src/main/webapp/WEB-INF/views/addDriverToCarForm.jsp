<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<a href="/index">Home</a>
<h1>Select a driver to add him to the car:</h1>
<form method="post" action="/cars/drivers/add">
    <input type="hidden" name="carId" value="${carId}"><br>
    Driver <select name="driverId">
        <c:forEach var="driver" items="${drivers}">
            <option
                value="${driver.getId()}">
                ${driver.getName()}
            </option>
        </c:forEach>
        </select>
    <button type="submit">Add</button>
</form>
<a href="/cars">back to cars</a>
</body>
</html>
