<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
    <style>
        h1 {
            text-align: center;
            margin-top: 200px
        }

        h2 {
            text-align: center;
        }
    </style>
    <title>Main Page</title>
</head>
<body>
<h1>Welcome!</h1>
<h2><a href="${pageContext.request.contextPath}/drivers/create">Register a driver</a></h2>
<h2><a href="${pageContext.request.contextPath}/drivers">See all drivers</a></h2>
<h2><a href="${pageContext.request.contextPath}/manufacturers/create">Create a new manufacturer</a></h2>
<h2><a href="${pageContext.request.contextPath}/cars/create">Create a new car</a></h2>
<h2><a href="${pageContext.request.contextPath}/cars/drivers/add">Add a driver</a></h2>
</body>
</html>
