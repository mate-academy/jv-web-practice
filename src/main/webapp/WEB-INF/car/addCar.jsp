<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add a new Car</title>
</head>
<body>
<h1>Fill out the given form</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Model <input type="text" name="model" required><br>
    Manufacturer <input type="number" name="manufacturerId" required><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
