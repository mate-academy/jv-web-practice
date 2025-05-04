<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Car</title>
</head>
<body>
<h1>Create car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/create">
    Model <input class="form-input" type="text" name="model"><br>
    Manufacturer id <input class="form-input" type="number" min="1" name="manufacturer_id"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>

