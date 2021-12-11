<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Taxi Service</title>
</head>
<body>
<h1>Welcome to taxi service</h1>
<header>PLEASE CHOOSE YOUR DECISION</header>

<td><a href="${pageContext.request.contextPath}/cars/add">
    <button type="submit">Click here to add a new car</button></a></td><br>

<td><a href="${pageContext.request.contextPath}/drivers/add">
    <button type="submit">Click here to add a new driver</button></a></td><br>

<td><a href="${pageContext.request.contextPath}/manufacturers/add">
    <button type="submit">Click here to add a new manufacturer</button></a></td><br>

<td><a href="${pageContext.request.contextPath}/cars/drivers/add">
    <button type="submit">Click here to add driver to car</button></a></td><br>

<td><a href="${pageContext.request.contextPath}/cars/get/all">
    <button type="submit">Click here to get all cars</button></a></td><br>

<td><a href="${pageContext.request.contextPath}/drivers/get/all">
    <button type="submit">Click here to get all drivers</button></a></td><br>

<td><a href="${pageContext.request.contextPath}/manufacturers/get/all">
    <button type="submit">Click here to get all manufacturers</button></a></td><br>
</body>
</html>
