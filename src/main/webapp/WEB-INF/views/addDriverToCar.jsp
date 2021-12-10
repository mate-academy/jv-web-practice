<%@ page contentType="text/html;charset=UTF-8" %>
<html>
    <head>
        <title>Add driver to the car</title>
    </head>
    <body>
        <h1>Choose the exact car and exact driver you want to add</h1>
        <form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
            Car id<label>
            <input type="number" name="car_id">
        </label><br>
            Driver id<label>
            <input type="number" name="driver_id">
        </label><br>
            <button type="submit">Submit</button>
        </form>
    </body>
</html>