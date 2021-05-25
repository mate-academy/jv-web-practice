<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Car</title>
</head>
    <body>
        <h1>Please fill in the form</h1>
        <form method="post" action="${pageContext.request.contextPath}/cars/add">
            Car model <input type="text" name="car_model" required><br>
            Manufacturer's id<input type="number" name="manufacturer_id" required><br>
            <button type="submit">Confirm</button>
        </form>
        <a href="${pageContext.request.contextPath}/cars">See all cars</a>
        <a href="${pageContext.request.contextPath}/cars/drivers/add">Add driver to car</a>
        <a href="${pageContext.request.contextPath}/">To main page</a>
    </body>
</html>
