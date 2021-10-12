<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Car creation</title>
</head>
<body>
<h1>Please, fill the form below</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Car's model <br><input type="text" name="model" required><br>
    Manufacturer's id <br><input type="number" name="manufacturer_id" min="1" required><br><br>
    <button type="submit" onclick="alert('If you will have an exclamation message '
    + 'car won\'t be added')">Add car</button>
    <button type="reset">Cancel</button>
</form>
<a href="${pageContext.request.contextPath}/manufacturers/all">See all manufacturers</a><br>
<a href="${pageContext.request.contextPath}/manufacturers/add">Add manufacturer</a><br>
<a href="${pageContext.request.contextPath}/">Back to main</a>
</body>
</html>
