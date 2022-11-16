<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Adding driver</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/drivers/add" method="post">
    <h3>Add a driver</h3>
    <p>Please input the form bellow and press the Submit button</p>
    <label for="name">Full name:</label><br>
    <input type="text" id="name" name="driverName" required><br>
    <label for="licenseNumber">License number:</label><br>
    <input type="text" id="licenseNumber" name="licenseNumber" required><br><br>
    <input type="submit" value="Submit">
</form>
</body>
</html>
