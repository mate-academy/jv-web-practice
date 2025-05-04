<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<a href="${pageContext.request.contextPath}/index">Go To Main</a>
<h2>Add driver to car</h2>
<form method="post" action="${pageContext.request.contextPath}/cars/add-driver">
<div>
    Choose driver
<select name="drivers">
    <optgroup label="Choose driver">
        <c:forEach items="${drivers}" var="driver">
            <option value=${driver.id}>${driver.name}</option>
        </c:forEach>
    </optgroup>
</select>
<br>
</div>
<br>
<div>
Choose car
    <select name="cars">
        <optgroup label="Choose car">
            <c:forEach items="${cars}" var="car">
            <option value=${car.id}>${car.model}</option>
            </c:forEach>
        </optgroup>
    </select>
</div>
<br>
<button type="submit">Add driver</button>
</form>
</body>
</html>
