<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Taxi</title>
</head>
<body>
    <h2>Work with drivers</h2>
    <form action="${pageContext.request.contextPath}/drivers/add" target="_blank">
        <button>Add driver</button>
    </form>
    <form action="${pageContext.request.contextPath}/drivers/all" target="_blank">
        <button>Get all drivers</button>
    </form><br><br>
    <h2>Work with manufacturers</h2>
    <form action="${pageContext.request.contextPath}/manufacturers/add" target="_blank">
        <button>Add manufacturer</button>
    </form>
    <form action="${pageContext.request.contextPath}/manufacturers/all" target="_blank">
        <button>Get all manufacturers</button>
    </form><br><br>
    <h2>Work with cars</h2>
    <form action="${pageContext.request.contextPath}/cars/add" target="_blank">
        <button>Add car</button>
    </form>
    <form action="${pageContext.request.contextPath}/cars/all" target="_blank">
        <button>Get all cars</button>
    </form>
    <form action="${pageContext.request.contextPath}/cars/drivers/add" target="_blank">
        <button>Add driver to car</button>
    </form>
</body>
</html>

