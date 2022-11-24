<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create car</title>
</head>
<body>
<h1>Please add new car</h1>

<form method="post" action="${pageContext.request.contextPath}/cars/add">
    <label>Model:</label><br>
    <input type="text" name="manufacturer"><br>
    <label>Manufacturer id:</label><br>
    <input type="text" name="manufacturer_id"><br>
    <button type="submit">Add</button><br><br><br>
</form>
<a href="${pageContext.request.contextPath}/manufacturers/all">Show all manufacturers</a><br>
<a href="${pageContext.request.contextPath}/cars/all">Back to all cars</a><br>
<a href="${pageContext.request.contextPath}/">Back to main page</a>
</body>
</html>
