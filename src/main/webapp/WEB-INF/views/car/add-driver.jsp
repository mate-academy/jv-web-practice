<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Add driver to car</title>
    </head>
        <body>
            <form method="post" action="${pageContext.request.contextPath}/car/add-driver-to-car">
                Car ID <input type="number" name="car_id"><br>
                Driver ID <input type="number" name="driver_id"><br>
                <button type="submit">Add</button>
            </form>
        </body>
</html>
