<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Add driver to car</title>
    </head>
    <body>
        <h1>Please the form below</h1>
        <form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
            Driver id <input type="number" name="driver_id" min="1" required><br>
            Car id <input type="number" name="car_id" min="1" required><br>
            <button type="submit">Confirm</button>
        </form>
    </body>
</html>
