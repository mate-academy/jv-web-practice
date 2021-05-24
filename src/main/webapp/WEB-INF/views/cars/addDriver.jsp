<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
    <body>
        <h1>Please fill in the form</h1>
        <form method="post" action="${pageContext.request.contextPath}/cars/addDriver">
            Driver id <input type="number" name="driver_id" required><br>
            Car id<input type="number" name="car_id" required><br>
            <button type="submit">Confirm</button>
        </form>
        <a href="${pageContext.request.contextPath}/cars">See all cars</a>
        <a href="${pageContext.request.contextPath}/">To main page</a>
    </body>
</html>
