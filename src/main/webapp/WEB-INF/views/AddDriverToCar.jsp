<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
    <form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
        Cars: <select name="car_id">
            <c:forEach items="${cars}" var="car">
                <option value="${car.id}">${car.model}</option>
            </c:forEach>
        </select><br>
        Drivers: <select name="driver_id">
            <c:forEach items="${drivers}" var="driver">
                <option value="${driver.id}">${driver.name}</option>
            </c:forEach>
        </select><br>
        <button type="submit">confirm</button>
    </form>
</body>
</html>
