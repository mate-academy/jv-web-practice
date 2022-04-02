<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Taxi</title>
</head>
    <body>
        <h1>Taxi service</h1>
        <h1>Cars:</h1>
        <form method="get" action="${pageContext.request.contextPath}/cars/all">
            Get all info about car <button type="submit">Get info</button>
        </form>
        <h1></h1>
        <form method="get" action="${pageContext.request.contextPath}/cars/register">
            Add new car <button type="submit">Add</button>
        </form>
        <h1></h1>
        <form method="get" action="${pageContext.request.contextPath}/cars/addDriverToCar">
            Add driver to car relation <button type="submit">Add relation</button>
        </form>
        <h1>Drivers:</h1>
        <form method="get" action="${pageContext.request.contextPath}/drivers/all">
            Get all drivers <button type="submit">Get all</button>
        </form>
        <h1></h1>
        <form method="get" action="${pageContext.request.contextPath}/drivers/register">
            Add new driver <button type="submit">Add</button>
        </form>
        <h1>Manufacturers:</h1>
        <form method="get" action="${pageContext.request.contextPath}/manufacturers/all">
            Get all manufacturers <button type="submit">Get all</button>
        </form>
        <h1></h1>
        <form method="get" action="${pageContext.request.contextPath}/manufacturers/register">
            Add new manufacturer <button type="submit">Add</button>
        </form>
    </body>
</html>
