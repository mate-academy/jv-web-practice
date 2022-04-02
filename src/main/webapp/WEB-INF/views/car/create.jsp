<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Adding a car to database</title>
</head>
<body>
    <h1>Please fill in all fields</h1>
    <form method="post" action="${pageContext.request.contextPath}/car/create">
        Car model <input type="text" name="model"><br>
        Car manufacturer id <input type="number" name="id"><br>
        <button type="submit">Add</button>
    </form>
    <form method="get" action="${ageContext.request.contextPath}/manufacturer/all">
        <button type="submit">Show all manufacturers</button>
    </form>
    <form method="get" action="${ageContext.request.contextPath}/">
        <button type="submit">Back to home</button>
    </form>
</body>
</html>
