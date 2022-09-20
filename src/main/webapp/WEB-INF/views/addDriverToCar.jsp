<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>My team</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/addDriverToCar">
    CarId <input type="text" name="carId"><br>
    DriverId <input type="text" name="driverId"><br>
    <button type="submit">Confirm</button>
</form>

<h1>${massege}</h1>
</body>
</html>
