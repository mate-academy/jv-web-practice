<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Create a car</title>
</head>
<body>
<h1>Parameters</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/create">
    Model <input type="text" name="model"><br>
    Manufacturer id <input type="number" name="manufacturer_id"><br>
    <button type="submit">Create</button>
</form>
</body>
</html>
