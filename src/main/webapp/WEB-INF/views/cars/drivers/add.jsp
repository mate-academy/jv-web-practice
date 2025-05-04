<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<h1>Enter driver id and car id:</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    Driver id <input type="text" name="driver_id"><br>
    Car id <input type="text" name="car_id"><br>
    <button type="submit">Add</button>
</form>
<a href="${pageContext.request.contextPath}/">Back to main page</a><br>
</body>
</html>
