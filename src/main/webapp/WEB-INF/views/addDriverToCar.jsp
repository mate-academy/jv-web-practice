<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>add</title>
</head>
<body>
    <h1>Hello ! I can add a new driver to car</h1>
    <form method="post" action="${pageContext.request.contextPath}/addDriverToCar">
        Driver ID<input type="text" name="driverId"><br>
        Car ID<input type="text" name="carId"><br>
        <button type="submit">Confirm</button>
    </form>
</body>
</html>
