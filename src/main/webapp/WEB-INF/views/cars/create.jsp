<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Adding a car to database</title>
</head>
<body>
    <h1>Please fill in all fields</h1>
    <form method="post" action="${pageContext.request.contextPath}/cars/create">
        Car model <input type="text" name="car_model"><br>
        Car manufacturer id <input type="number" name="manufacturer_id"><br>
        <button type="submit">Add</button>
    </form>
    <a href="${pageContext.request.contextPath}/manufacturers/all">Show all manufacturers</a>
    <a href="${pageContext.request.contextPath}/index">Back to home</a>
</body>
</html>
