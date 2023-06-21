<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<style><%@include file="/WEB-INF/views/css/style.css"%> </style>
<head>
    <title>Car</title>
</head>
<body>
<h1>Add driver to car</h1>
    <form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
        Car id <input class="form-input" type="number" min="1" name="car_id"><br>
        Driver id <input class="form-input" type="number" min="1" name="driver_id"><br>
        <button type="submit">Confirm</button>
    </form>
</body>
</html>
