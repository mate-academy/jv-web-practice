<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Driver to Car</title>
</head>
<style><%@include file="/WEB-INF/style/style.css"%></style>
<body>
    <%@include file="/WEB-INF/includes/header.jsp"%>
    <h2>Add driver to car</h2>
    <form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
        Car id: <input type="number" name="car_id"><br>
        Driver id: <input type="number" name="driver_id"><br>
        <button type="submit">Add</button>
    </form>
</body>
</html>
