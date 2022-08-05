<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>taxi service</title>
    <link rel="stylesheet" type="text/css" href="/WEB-INF/static/css/style.css}">
</head>
<body>
<h1>Welcome to Taxi Service!</h1>
<section>
    <div>
        <h3>Driver</h3>
        <ul>
            <li>
                <a href="${pageContext.request.contextPath}/drivers">get all</a>
            </li>
            <li>
                <a href="${pageContext.request.contextPath}/drivers/add">create</a><br>
            </li>
        </ul>
    </div>
</section>
<section>
    <div>
        <h3>Manufacturer</h3>
        <ul>
            <li>
                <a href="${pageContext.request.contextPath}/manufacturers">get all</a>
            </li>
            <li>
                <a href="${pageContext.request.contextPath}/manufacturers/add">create</a><br>
            </li>
        </ul>
    </div>
</section>
<section>
    <div>
        <h3>Car</h3>
        <ul>
            <li>
                <a href="${pageContext.request.contextPath}/cars">get all</a><br>
            </li>
            <li>
                <a href="${pageContext.request.contextPath}/cars/add">create</a><br>
            </li>
            <li>
                <a href="${pageContext.request.contextPath}/cars/drivers/add">add driver to car</a><br>
            </li>
        </ul>
    </div>
</section>
</body>
</html>
