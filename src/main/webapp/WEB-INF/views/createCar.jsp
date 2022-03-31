<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create car</title>
</head>
<body>
<h3>Create a new Car</h3>
<p>Fill in the form below:</p>
<form method="post" action="${pageContext.request.contextPath}/cars/create">
    Car's model <input type="text" name="model"><br>
    Manufacturer's id <input type="text" name="manufacturer_id"><br>
    <button type="submit">Confirm</button>
</form>
<a href="${pageContext.request.contextPath}/manufacturer/all">Show all manufacturers</a><br>
<a href="${pageContext.request.contextPath}/index">return to main page</a>
</body>
</html>
