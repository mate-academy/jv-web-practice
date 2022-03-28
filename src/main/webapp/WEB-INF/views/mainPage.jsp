<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Main page</title>
    <style>
        .topnav {
            background-color: #338999;
            display: flex;
            justify-content: space-between;
        }

        .topnav a {
            padding: 14px 16px;
            text-decoration: none;
            font-size: 17px;
        }

        .topnav a.active {
            color: white;
        }
    </style>
</head>
<body>
<div class="topnav">
    <a class="active" href="${pageContext.request.contextPath}/">Main</a>
    <a class="active" href="${pageContext.request.contextPath}/cars">Cars</a>
    <a class="active" href="${pageContext.request.contextPath}/drivers">Drivers</a>
    <a class="active" href="${pageContext.request.contextPath}/manufacturers">Manufacturers</a>
</div>
<h1 style="text-align: center">Welcome to the taxi-service buddy!</h1>
</body>
</html>
