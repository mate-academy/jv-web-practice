<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Connect cars and drivers</title>
</head>
<body>
<h1>Here you can add driver to car</h1>
<form method="POST" action="${pageContext.request.contextPath}/cars/add-driver">
    Driver: <select name="driver_id">
    <c:forEach items="${drivers}" var="driver">
        <option value="${driver.id}">
            <c:out value="${driver.name}" />
        </option>
    </c:forEach>
</select> <br><br>

    Car: <select name="car_id">
        <c:forEach items="${cars}" var="car">
            <option value="${car.id}">
                <c:out value="${car.model}" />
                -
                <c:out value="${car.manufacturer}" />
            </option>
        </c:forEach>
    </select> <br><br>

    <button type="submit">LET`S GO!</button>
</form>
</body>
</html>
