<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Create new car</title>
</head>
<body>
<h1>Enter car data:</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/create">
    Model <input type="text" name="model"><br>
    Manufacturer id <input type="text" name="manufacturer_id"><br>
    <button type="submit">Create</button>
</form>
<a href="${pageContext.request.contextPath}/cars/all">Look at all cars list</a><br>
<a href="${pageContext.request.contextPath}">Back to main page</a><br>
</body>
</html>
