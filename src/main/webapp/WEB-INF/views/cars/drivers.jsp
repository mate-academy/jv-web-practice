<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Car drivers editor</title>
</head>
<body>
<h1>Car drivers</h1>
car id: ${car.id}<br>
car model: ${car.model}<br>
car manufacturer: ${car.manufacturer.name}<br>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers">
    <c:forEach items="${drivers}" var = "driver">
        <input type="checkbox" id="${driver.id}" name="${driver.id}" <c:if test="${car.drivers.contains(driver)}">checked</c:if>>
        <label for="${driver.id}">${driver.name}: ${driver.licenseNumber}</label><br>
    </c:forEach>
    <input type="hidden" name="id" value="${car.id}" />
    <button type="submit">Confirm</button>
</form>
</body>
</html>
