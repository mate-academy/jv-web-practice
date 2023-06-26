<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Bounding driver to car</title>
</head>
<body>
<h2>Bound driver to the car:</h2>
<form method = "post"  action = "${pageContext.request.contextPath}/drivers/add">
    Driver Id <input type = "number" name = "driver_id"><br>
    Car Id <input type="number" name = "car_id"><br>
    <button type="submit">Bound</button>
    <button type="reset">Reset</button>
</form>
</body>
</html>
