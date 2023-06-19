<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>My team</title>
</head>
<body>

<h1>Hello, mates!</h1>

<br>
<h2>Add</h2>
<button onclick="location.href='${pageContext.request.contextPath}/cars/add'">
   Add a new car
</button>
<button onclick="location.href='${pageContext.request.contextPath}/drivers/add'">
    Add a new driver
</button>
<button onclick="location.href='${pageContext.request.contextPath}/manufacturers/add'">
    Add a new manufacturer
</button>
<button onclick="location.href='${pageContext.request.contextPath}/cars/drivers'">
    Add driver to the car
</button>

<br>
<h2>Display/delete</h2>
<button onclick="location.href='${pageContext.request.contextPath}/cars'">
    Display all cars
</button>
<button onclick="location.href='${pageContext.request.contextPath}/drivers'">
    Display all drivers
</button>
<button onclick="location.href='${pageContext.request.contextPath}/manufacturers'">
    Display all manufacturers
</button>

</body>
</html>
