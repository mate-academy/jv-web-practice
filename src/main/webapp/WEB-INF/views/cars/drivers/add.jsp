<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>ADDING DRIVER TO CAR</title>
</head>
<body>
<h1>ADDING DRIVER TO CAR OPERATION:</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    Driver ID <input type="text" name="driverId"><br>
    Car ID <input type="text" name="carId"><br>
    <button type="submit">CONFIRM</button>
</form>
<tr>
    <td><a href="${pageContext.request.contextPath}/index">Main page</a></td>
</tr>
</body>
</html>
