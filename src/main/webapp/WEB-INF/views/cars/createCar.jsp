<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>New Car</title>
</head>
<body>
<h1>Add new car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Manufacturer ID <input type="number" name="manufacturer_id"><br>
    Model <input type="text" name="model"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
