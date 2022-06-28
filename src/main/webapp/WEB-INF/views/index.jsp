<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>My team</title>
</head>
<body>
<h1>Hello, mates!</h1>

<h2>Cars: </h2>
<a href="${pageContext.request.contextPath}/cars/all"><button>All cars</button></a>
<a href="${pageContext.request.contextPath}/cars/create"><button>Create a car</button></a>
<a href="${pageContext.request.contextPath}/cars/drivers/add"><button>Add driver to a car</button></a>

<h2>Drivers: </h2>
<a href="${pageContext.request.contextPath}http://localhost:8080/drivers/all">
    <button href="">All drivers</button>
</a>
<a href="${pageContext.request.contextPath}/drivers/create">
    <button href="">Create a driver</button>
</a>

<h2>Manufacturers: </h2>
<a href="${pageContext.request.contextPath}/manufacturers/all">
    <button href="">All manufacturers</button>
</a>
<a href="${pageContext.request.contextPath}/manufacturers/create">
    <button href="">Create a manufacturer</button>
</a>
</body>
</html>
