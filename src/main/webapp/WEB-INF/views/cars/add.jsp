<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
    <title>Driver addition</title>
</head>
<body>
<h1>Fill the form below</h1>

<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    Driver Id <input type="number" name="driver_id"><br>
    Car Id <input type="number" name="car_id"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
