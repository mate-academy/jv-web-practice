<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Welcome</title>
</head>
<body>
<h1>Choose your action</h1>

<td><a href="${pageContext.request.contextPath}/cars/add">
    <button type="submit">Add a new car</button></a></td><br>

<td><a href="${pageContext.request.contextPath}/drivers/add">
    <button type="submit">Add a new driver</button></a></td><br>

<td><a href="${pageContext.request.contextPath}/manufacturers/add">
    <button type="submit">Add a new manufacturer</button></a></td><br>

<td><a href="${pageContext.request.contextPath}/cars/drivers/add">
    <button type="submit">Add driver to car</button></a></td><br>

<td><a href="${pageContext.request.contextPath}/drivers/get/all">
    <button type="submit">Get all drivers</button></a></td><br>
</body>
</html>
