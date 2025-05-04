<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add car</title>
</head>
<body>
<h1>Please enter car information</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Model <input type="text" required name="model"><br>
    Manufacturer ID <input type="number" required name="manufacturer_id"><br>
    <button type="submit">Add New Car</button>
</form>
</body>
</html>
