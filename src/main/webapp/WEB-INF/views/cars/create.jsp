<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Create Car</title>
</head>
<body>
<form method="POST" action="${pageContext.request.contextPath}/cars/create">
    Model: <input type="text" name="model"><br>
    Manufacturer id: <input type="number" name="manufacturerId"><br>
    <button type="submit">Create Car</button>
</form>
</body>
</html>
