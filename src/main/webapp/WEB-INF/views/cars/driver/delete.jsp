<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Delete driver from car</title>
    </head>
    <body>
        <h1>Fill out the form to remove the driver from the car</h1>
        <form method="post" action="${pageContext.request.contextPath}/cars/driver/delete">
        Car ID <input type="number" required name="car_id"><br>
        Driver ID <input type="number" required name="driver_id"><br>
        <button type="submit">Remove Driver from car</button>
       </form>
    </body>
</html>
