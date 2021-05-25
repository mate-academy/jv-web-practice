<%@ page contentType="text/html;charset=UTF-8" language="java" %><html>
<head>
    <title>Add driver to a car</title>
</head>
<body>
    <h1>Add driver to a car form: </h1>

    <form method ="post" action="${pageContext.request.contextPath}/car/driver/add">
        Car ID <input type="number" name="carId"><br>
        Driver ID <input type="number" name="driverId"><br>
        <button type="submit">Confirm</button>
    </form>
    </body>
</html>
