<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver</title>
</head>
<body>
<h1>Add driver to car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    Car id <select name="car_id">
    <c:forEach items="${cars}" var="car">
        <option><c:out value="${car.id}" /></option>
    </c:forEach>
    </select> </br>
        Driver id <select name="driver_id">
        <c:forEach items="${drivers}" var="driver">
            <option><c:out value="${driver.id}" /></option>
        </c:forEach>
    </select> </br>
    <button>Add</button>
</form>
</body>
</html>
