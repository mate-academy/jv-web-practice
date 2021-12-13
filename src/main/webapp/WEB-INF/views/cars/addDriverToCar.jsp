<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../index.jsp"%>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<h2>Add driver to car</h2>
<form method="post" action="${pageContext.request.contextPath}/cars/adddriver">
    Car: <select name="car_id">
    <c:forEach items="${cars}" var="car">
        <option value="${car.id}">${car.model}</option>
    </c:forEach>
</select>
    Driver: <select name="driver_id">
    <c:forEach items="${drivers}" var="driver">
        <option value="${driver.id}">${driver.name}</option>
    </c:forEach>
</select><br><br>
    <button type="submit">Add driver to car</button>
</form>
</body>
</html>
