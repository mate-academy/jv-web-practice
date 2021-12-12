<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Adding driver</title>
</head>
<body>
<h1>Add driver to car</h1>
<form method="post" action="${pageContext.request.contextPath}/add/driver">
    Car <input type="number" name="car_id"><br>
    Drivers <select name="driver_id">
    <c:forEach items="${drivers}" var="driver">
        <option value="${driver.id}">${driver.name}</option>
    </c:forEach>
</select>
    <button type="submit">Confirm</button>
</form>
</body>
</html>