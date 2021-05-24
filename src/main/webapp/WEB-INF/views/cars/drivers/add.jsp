<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
    <h1>Fill the form below to add a Driver to the Car</h1>

    <form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
        Select car <select name="car_id">
        <c:forEach items="${cars}" var="car">
            <option value="${car.getId()}">"${car.getModel()}"</option>
        </c:forEach>
    </select><br>
        Select driver <select name="driver_id">
        <c:forEach items="${drivers}" var="driver">
            <option value="${driver.getId()}">"${driver.getName()}"</option>
        </c:forEach>
    </select><br>
        <button type="submit">Add</button>
    </form>
</body>
</html>
