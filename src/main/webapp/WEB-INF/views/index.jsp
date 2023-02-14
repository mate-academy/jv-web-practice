<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Index</title>
</head>
<body>
<h1>Choose action</h1>
<form method="get" action="${pageContext.request.contextPath}/drivers/create">
    <td>Create driver</td>
    <button type="submit">Register</button>
</form>
<form method="get" action="${pageContext.request.contextPath}/drivers">
    <td>Display all drivers</td>
    <button type="submit">Display</button>
</form>
<form method="get" action="${pageContext.request.contextPath}/manufacturers/create">
    <td>Create manufacturer</td>
    <button type="submit">Register</button>
</form>
<form method="get" action="${pageContext.request.contextPath}/cars/create">
    <td>Create car</td>
    <button type="submit">Register</button>
</form>
<form method="get" action="${pageContext.request.contextPath}/cars/drivers/add">
    <td>Add driver</td>
    <button type="submit">Add</button>
</form>
<form method="get" action="${pageContext.request.contextPath}/manufacturers">
    <td>Display all manufacturers</td>
    <button type="submit">Display</button>
</form>
<form method="get" action="${pageContext.request.contextPath}/cars">
    <td>Display all cars</td>
    <button type="submit">Display</button>
</form>
</body>
</html>
