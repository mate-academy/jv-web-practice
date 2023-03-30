<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/cars/addDriver">
    Car Id <br><input type="text" name="car_id"><br>
    Driver Id <br><input type="text" name="driver_id"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
