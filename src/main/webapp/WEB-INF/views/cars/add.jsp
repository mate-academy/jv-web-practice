<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add car</title>
</head>
<body>

<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Car Model <input type="text" required name="model"><br>
    Manufacturer Id <input type="number" required name="manufacturer_id"><br>
    <button type="submit">Add</button>
</form>
</body>
</html>
