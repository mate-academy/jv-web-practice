<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Taxi Service</title>
</head>
<body>
<h1>Hello, mates!</h1>
    <form action="${pageContext.request.contextPath}/cars/add">
        <input type="submit" value="Add car to DB" />
    </form>

    <form action="${pageContext.request.contextPath}/cars/all">
    <input type="submit" value="See all cars from DB" />
    </form>

    <form action="${pageContext.request.contextPath}/cars/drivers/add">
    <input type="submit" value="Add driver to car from DB"/>
    </form>

    <form action="${pageContext.request.contextPath}/drivers/add">
    <input type="submit" value="Add driver to DB" />
    </form>

    <form action="${pageContext.request.contextPath}/drivers/all">
    <input type="submit" value="See all drivers from DB" />
    </form>

    <form action="${pageContext.request.contextPath}/manufacturers/add">
    <input type="submit" value="Add manufacturer to DB" />
    </form>

    <form action="${pageContext.request.contextPath}/manufacturers/all">
    <input type="submit" value="See all manufacturers from DB" />
    </form>
</body>
</html>
