<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Car creation</title>
</head>
<body>
<h1>Create a car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Model: <input required type="text" name="model"><br>
    Manufacturer id: <input required type="number" name="manufacturer_id"><br>
    <button type="submit">Create</button>
</form>
</body>
</html>
