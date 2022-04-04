<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Taxi</title>
</head>
<body>
    <h1>Welcome to Taxi Service</h1>
    <h1>Select an action</h1>
    <form method="get" action="${pageContext.request.contextPath}/cars">
        <button type="submit">Get all cars info</button>
    </form>
    <form method="get" action="${pageContext.request.contextPath}/drivers">
        <button type="submit">Get all drivers info</button>
    </form>
    <form method="get" action="${pageContext.request.contextPath}/manufacturers">
        <button type="submit">Get all manufacturer info</button>
    </form>
    <form method="get" action="${pageContext.request.contextPath}/cars/create">
        <button type="submit">Add new car to database</button>
    </form>
    <form method="get" action="${pageContext.request.contextPath}/cars/add/driver">
        <button type="submit">Assign a driver</button>
    </form>
    <form method="get" action="${pageContext.request.contextPath}/drivers/create">
        <button type="submit">Add new driver to database</button>
    </form>
    <form method="get" action="${pageContext.request.contextPath}/manufacturers/create">
        <button type="submit">Add new manufacturer to database</button>
    </form>
</body>
</html>
