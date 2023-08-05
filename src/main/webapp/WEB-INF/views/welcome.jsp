<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Welcome to My Team</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 800px;
            margin: 50px auto;
            background-color: #fff;
            padding: 20px;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.2);
            border-radius: 5px;
        }
        h1 {
            text-align: center;
            color: #007bff;
        }
        p {
            text-align: center;
            margin-bottom: 30px;
        }
        .links-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
        }
        .link {
            margin: 10px;
            padding: 10px 20px;
            background-color: #007bff;
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }
        .link:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Welcome </h1>
    <p>Explore our services:</p>
    <div class="links-container">
        <a href="${pageContext.request.contextPath}/cars/drivers/add" class="link">Add Driver to Car</a>
        <a href="${pageContext.request.contextPath}/cars/create" class="link">Create Car</a>
        <a href="${pageContext.request.contextPath}/cars/all" class="link">All Cars</a>
        <a href="${pageContext.request.contextPath}/drivers/create" class="link">Create Driver</a>
        <a href="${pageContext.request.contextPath}/drivers/all" class="link">All Drivers</a>
        <a href="${pageContext.request.contextPath}/manufacturers/create" class="link">Create Manufacturer</a>
        <a href="${pageContext.request.contextPath}/manufacturers/all" class="link">All Manufacturers</a>
    </div>
</div>
</body>
</html>

