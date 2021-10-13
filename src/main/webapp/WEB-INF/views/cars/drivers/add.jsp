<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<h1>Chose driver and corresponding car</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/cars/add">
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
    <button type="submit">Add driver to car</button>
</form>
</body>
</html>
