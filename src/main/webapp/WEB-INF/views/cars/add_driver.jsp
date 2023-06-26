<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<h1>Add driver to car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add_driver">
    <label>Car id: </label>
    <select name="car_id">
        <c:forEach items="${cars}" var="car">
            <option value=<c:out value="${car.id}"/>><c:out value="${car.id}: ${car.manufacturer.name} ${car.model}"/></option>
        </c:forEach>
    </select>
    <label>Driver id: </label>
    <select name="driver_id">
        <c:forEach items="${drivers}" var="driver">
            <option value=<c:out value="${driver.id}"/>><c:out value="${driver.id}: ${driver.name}"/></option>
        </c:forEach>
    </select>
    <button type="submit">create</button>
</form>
</body>
</html>
