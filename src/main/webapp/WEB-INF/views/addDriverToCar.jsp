<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/cars/addDriverToCar">
    Car ID <input type="text" name="carId"><br>
    Driver ID <input type="text" name="driverId"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
