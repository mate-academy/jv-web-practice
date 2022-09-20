<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create a new car</title>
</head>
<body>
<h1>Fill in the information about the new car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/create">
    Model <input type="text" name="model"><br>
    Manufacturer <input type="number" name="manufacturer_id"><br>
    <button type="submit">Create</button>
</form>
</body>
</html>