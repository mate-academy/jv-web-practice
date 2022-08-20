<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Index page</title>
    <style>
        body {
            font-family: Helvetica, sans-serif;
            font-size: 12px;
            line-height: 16px;
        }
    </style>
</head>
<body>
<h1>Taxi service</h1>
<h2>
    <a href="${pageContext.request.contextPath}/cars">
        <button>CARS</button>
    </a><br><br>
    <a href="${pageContext.request.contextPath}/drivers">
        <button>DRIVERS</button>
    </a>
    <br><br>
    <a href="${pageContext.request.contextPath}/manufacturers">
        <button>MANUFACTURERS</button>
    </a>
</h2>
</body>
</html>
