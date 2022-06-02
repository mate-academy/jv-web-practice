<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>taxi service</title>
    <link rel="stylesheet" type="text/css" href="/WEB-INF/static/css/style.css}">
</head>
<body>
<h1>Welcome to Taxi Service!</h1>
<div class="topNav">
<section>
    <div>
        <h3>Driver</h3>
        <ul>
            <li>
                <a href="drivers/all">get all</a>
            </li>
            <li>
                <a href="drivers/create">create</a><br>
            </li>
            <li>
                <a href="drivers/delete">delete</a>
            </li>
        </ul>
    </div>
</section>
<section>
    <div>
        <h3>Manufacturer</h3>
        <ul>
            <li>
                <a href="manufacturers/create">create</a><br>
            </li>
            <li>
                <a href="manufacturers/delete">delete</a>
            </li>
        </ul>
    </div>
</section>
<section>
    <div>
        <h3>Car</h3>
        <ul>
            <li>
                <a href="cars/create">create</a><br>
            </li>
            <li>
                <a href="cars/add">add driver to car</a><br>
            </li>
            <li>
                <a href="cars/delete">delete</a>
            </li>
        </ul>
    </div>
</section>
</div>
</body>
</html>
