<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Taxi service</title>
    </head>
    <body>
        <h1>Надайте водію автомобіль</h1>
        <form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
            Id водія <input type="text" name="driver_id"><br>
            Id автомобіля <input type="text" name="car_id"><br>
            <button type="submit">Додати</button>
        </form>
    </body>
</html>
