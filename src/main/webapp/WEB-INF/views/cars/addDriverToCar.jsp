<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Add driver to car page</title>
</head>
<body>
<h1>Please select driver and car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add_driver">
    Select driver:&nbsp;
    <select name="driver">
        <c:forEach items="${listDrivers}" var="driver">
            <option value="${driver.id}"
                    <c:if test="${driver.id eq selectedDriverId}">selected = "selected"</c:if>
        >
        ${driver.name}
        </option>
        </c:forEach>
    </select><br>
    Select car:&nbsp;
    <select name="car">
        <c:forEach items="${listCars}" var="car">
            <option value="${car.id}"
                    <c:if test="${car.id eq selectedCarId}">selected="selected"</c:if>
            >
            ${car.manufacturer.name} ${car.model}
            </option>
        </c:forEach>
    </select><br>
    <input type="submit" value="Submit" />
</form>
</body>
</html>
