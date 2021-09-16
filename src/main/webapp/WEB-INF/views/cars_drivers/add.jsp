<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add drivers to Cars</title>
</head>
<body>
<h1>Add driver to car</h1>

<form method="post" action="${pageContext.request.contextPath}/driverToCar_add">
    CarID <input type="text" name="car_id"><br>
    DriverId <input type="text" name="driver_id"><br>
    <button type="submit">Create</button>
</form>
</body>
</html>
