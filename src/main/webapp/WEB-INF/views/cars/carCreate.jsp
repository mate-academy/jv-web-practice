<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>My team</title>
</head>
<body>
<form method="get" action="${pageContext.request.contextPath}/cars/carList">
    <button type="submit"><--</button>
</form>
<h4>Create a Car</h4>
<form method="post" action="${pageContext.request.contextPath}/cars/carCreate">
    Car Model <br><input type="text" name="carModel"><br>
    Car Manufacturer Id <br><input type="number" name="carManufacturerId"><br>
    Car Initial Driver Id <br><input type="number" name="carInitialDriverId"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
