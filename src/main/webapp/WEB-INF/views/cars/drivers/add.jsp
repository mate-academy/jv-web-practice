<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>WEB PRACTICE</title>
    <style>
        <%@include file="/WEB-INF/css/style.css" %>
    </style>
</head>
<body>
<%@include file="/WEB-INF/views/navbar/navbar.jsp" %>
<h1>ADD DRIVER TO CAR</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    <label>Car: <select name="car" id="car" required>
        <option value="">--Choose a car--</option>
        <c:forEach items="${cars}" var="car">
            <option value="${car.getId()}">${car.getId()}: ${car.getModel()}</option>
        </c:forEach>
    </select></label>

    <label>Driver:
        <select name="driver" id="driver" required>
            <option value="">--Choose a driver--</option>
            <c:forEach items="${drivers}" var="driver">
                <option value="${driver.getId()}">${driver.getId()}: ${driver.getName()}</option>
            </c:forEach>
        </select>
    </label>
    <button type="submit">Add</button>
</form>

</body>
</html>
