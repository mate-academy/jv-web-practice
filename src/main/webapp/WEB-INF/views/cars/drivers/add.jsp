<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<h1>Please, fill car form</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    Car <select name="car_id">
    <c:forEach items="${cars}" var="car">
        <option value="${car.getId()}"> ${car.getModel()} </option>
    </c:forEach>
    </select><br/>
    Driver <select name="driver_id">
    <c:forEach items="${drivers}" var="driver">
        <option value="${driver.getId()}"> ${driver.getName()} </option>
    </c:forEach>
</select><br/>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
