<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Creating a car</title>
</head>
<body>
<h1>Please fill out the form below</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Model <input type="text" name="model">
    Manufacturer id <input type="number" name="manufacturer_id">
    <button type="submit">Create</button>
</form>
</body>
</html>
