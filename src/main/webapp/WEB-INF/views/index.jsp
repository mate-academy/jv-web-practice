<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Taxi app</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined"/>
    <style>
        nav {
            display: flex;
            align-items: center;
            gap: 10px;
        }

        a {
            text-decoration: none;
            color: black;
            display: flex;
            align-items: center;
            gap: 5px;
            background-color: beige;
            padding: 10px 10px;
            border-radius: 24px;
        }
    </style>
</head>
<body>
    <nav>
        <a href="${pageContext.request.contextPath}/drivers">
            <span class="material-symbols-outlined">group</span>Drivers
        </a>
        <a href="${pageContext.request.contextPath}/cars">
            <span class="material-symbols-outlined">local_taxi</span>Cars
        </a>
        <a href="${pageContext.request.contextPath}/manufacturers">
            <span class="material-symbols-outlined">handyman</span>Manufacturers
        </a>
    </nav>
</body>
</html>
