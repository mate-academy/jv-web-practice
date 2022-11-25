<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<h4>Fill the form to add some driver to the car</h4>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    Car manufacturer : <input type="text" name="carManufacturer"><br>
    Car model : <input type="text" name="carModel"><br>
    Driver name : <input type="text" name="driverName"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
