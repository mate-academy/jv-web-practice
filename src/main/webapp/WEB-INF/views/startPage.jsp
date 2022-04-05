<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Taxi</title>
</head>
    <body>
        <h1>Taxi service</h1>
        <h1>Cars:</h1>
        <form method="get" action="${pageContext.request.contextPath}/cars">
            Get all info about car <button type="submit">Get info</button>
        </form>
        <h1></h1>
        <form method="get" action="${pageContext.request.contextPath}/cars/add">
            Add new car <button type="submit">Add</button>
        </form>
        <h1>Drivers:</h1>
        <form method="get" action="${pageContext.request.contextPath}/drivers">
            Get all drivers <button type="submit">Get all</button>
        </form>
        <h1></h1>
        <form method="get" action="${pageContext.request.contextPath}/drivers/add">
            Add new driver <button type="submit">Add</button>
        </form>
        <h1></h1>
        <form method="get" action="${pageContext.request.contextPath}/cars/drivers/add">
            Add driver to car relation <button type="submit">Add relation</button>
        </form>
        <h1>Manufacturers:</h1>
        <form method="get" action="${pageContext.request.contextPath}/manufacturers">
            Get all manufacturers <button type="submit">Get all</button>
        </form>
        <h1></h1>
        <form method="get" action="${pageContext.request.contextPath}/manufacturers/add">
            Add new manufacturer <button type="submit">Add</button>
        </form>
    </body>
</html>
