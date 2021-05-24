<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Main page</title>
</head>
<body>
<h1>Hello there!</h1>
<ul>
    <li>
        <ul>
            <li><a href="${pageContext.request.contextPath}/cars">See all cars</a></li>
            <li><a href="${pageContext.request.contextPath}/cars/addCar">Add car</a></li>
            <li><a href="${pageContext.request.contextPath}/cars/addDriver">Add driver to the car</a></li>
        </ul>
    </li>
    <li>
        <ul>
            <li><a href="${pageContext.request.contextPath}/drivers">See all drivers</a></li>
            <li><a href="${pageContext.request.contextPath}/drivers/addDriver">Add driver</a></li>
        </ul>
    </li>
    <li>
        <ul>
            <li><a href="${pageContext.request.contextPath}/manufacturers">See all manufacturers</a></li>
            <li><a href="${pageContext.request.contextPath}/manufacturers/addManufacturer">Add manufacturer</a></li>
        </ul>
    </li>
</ul>
</body>
</html>
