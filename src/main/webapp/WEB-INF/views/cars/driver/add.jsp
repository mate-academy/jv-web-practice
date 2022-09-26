<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Add driver to car</title>
    </head>
    <body>
        <h1>Fill out the form of adding a driver to the car</h1>
        <form method="post" action="${pageContext.request.contextPath}/cars/driver/add">
        Car ID <input type="number" required name="car_id"><br>
        Driver ID <input type="number" required name="driver_id"><br>
        <button type="submit">Add Driver To Car</button>
        </form>
    </body>
</html>
