<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>add driver to car</title>
</head>
<body>
<h1>Add a driver to your car</h1>
<h1>Choose a driver and a car</h1>
<form method="post" action="${pageContext.request.contextPath}/driver/car">
    Driver <select name="driver">
    <c:forEach items="${drivers}" var="driver">
        <option value="${driver.getId()}">${driver.getName()}</option>
    </c:forEach>
</select>
    Car <select name="car">
    <c:forEach items="${cars}" var="car">
        <option value="${car.getId()}">${car.getModel()}</option>
    </c:forEach>
</select>
    <button type="submit">add driver to car</button>
</form>
</body>
</html>
