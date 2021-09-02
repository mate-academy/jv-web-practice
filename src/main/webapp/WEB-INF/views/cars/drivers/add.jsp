<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
    <h1>ADDING A DRIVER TO THE CAR </h1>
    <h2>Please the form below</h2>
    <form method="post" action="${pageContext.request.contextPath}/add-driver-to-car">
        CAR ID: <input type="text" name="car_id" required="required"><br>
        DRIVER ID: <input type="text" name="driver_id" required="required"><br>
        <button type="submit">ADD A DRIVER TO THE CAR</button>
    </form>
</body>
</html>
