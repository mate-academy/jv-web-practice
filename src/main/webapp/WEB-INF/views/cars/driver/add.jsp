<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<h1>Please the form below</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/driver/add">
    <select name="car">
        <c:forEach items="${cars}" var="car">
            <option value="${car.id}">${car.model}</option>
        </c:forEach>
    </select>

    <select name="driver">
        <c:forEach items="${drivers}" var="driver">
            <option value="${driver.id}">${driver.name}</option>
        </c:forEach>
    </select>

    <button type="submit">Add Driver to Car</button>
</form>
</body>
</html>