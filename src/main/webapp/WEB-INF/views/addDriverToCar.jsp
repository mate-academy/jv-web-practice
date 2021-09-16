<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<h1>Please fill the form below</h1>

<form method="post" action="${pageContext.request.contextPath}/cars/addDriverToCar">
    Car ID <input type="text" name="carId"><br>
    Driver ID <input type="text" name="driverId"><br>
    <button type="submit">Add driver</button>
</form>
</body>
</html>