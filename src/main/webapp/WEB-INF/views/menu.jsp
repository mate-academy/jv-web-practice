<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>My Website</title>
</head>
<style>
    * {
        margin: 0;
        padding: 0;
    }
    nav {
        background-color: #333;
    }
    nav ul {
        display: flex;
        list-style: none;
    }
    nav li {
        margin-right: 20px;
    }
    nav li:last-child {
        margin-right: 0;
    }
    nav a {
        color: #fff;
        display: block;
        padding: 10px;
        text-decoration: none;
    }
    nav a:hover {
        background-color: #555;
    }
    h1 {
        font-family: Avenir, sans-serif;
        font-size: 2.5rem;
        font-weight: 600;
        text-align: center;
    }
</style>
<body>
<h1>Taxi Service</h1>
<nav>
    <ul>
        <li><a href="/cars/create">Create new car</a></li>
        <li><a href="/drivers/create">Create new driver</a></li>
        <li><a href="/manufacturers/create">Create new manufacturer</a></li>
        <li><a href="/cars">Display all cars</a></li>
        <li><a href="/drivers">Display all drivers</a></li>
        <li><a href="/manufacturers">Display all manufacturers</a></li>
    </ul>
</nav>
</body>
</html>