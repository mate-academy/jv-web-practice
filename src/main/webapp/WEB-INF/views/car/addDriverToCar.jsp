<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Driver to Car</title>
</head>
<body>
<h1>Please, fill the empty fields</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    Driver Id <select name="driver_id">
            <c:forEach items="${driversList}" var="driver">
                    <option value="${driver.id}">
                ${driver.name}
                    </option>
            </c:forEach>
            </select>
            <br>
    Car Id
    <select name="car_id">
        <c:forEach items="${carList}" var="car">
            <option value="${car.id}">
                    ${car.model}
            </option>
        </c:forEach>
    </select>
    <br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
