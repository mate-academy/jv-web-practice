<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create new Car</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Model <input type="text" name="model"><br>
    ManufacturerID <input type="text" name="manufacturer_id"><br>
    <button type="submit">Create</button>
</form>
</body>
</html>
