<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<h1>Please write the form below</h1>
<form method="post" action="${pageContext.request.contextPath}/car/addDriver">
    Driver ID <input type="text" name="driver_id"><br>
    Driver Name <input type="text" name="driver_name"><br>
    Driver License Number <input type="text" name="license_number"><br>
    Car ID <input type="text" name="car_id"><br>
    Model <input type="text" name="model"><br>
    Manufacturer ID <input type="text" name="manufacturer_id"><br>
    <button type="submit">Enter</button>
</form>
</body>
</html>
