<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Delete car</title>
</head>
<body>
<h1>Enter car id:</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/delete">
    Car id <input type="text" name="car_id"><br>
    <button type="submit">Delete</button>
</form>
<a href="${pageContext.request.contextPath}/cars/all">Look at all cars list</a><br>
<a href="${pageContext.request.contextPath}/">Back to main page</a><br>
</body>
</html>
