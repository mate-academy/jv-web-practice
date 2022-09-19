<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create a new Car</title>
</head>
<body>
<h1>Fill the form below to create new car:</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Model <input type="text" name="model"><br>
    Manufacturer <input type="number" name="manufacturerId"><br>
    <button type="submit">Create Car</button>
</form>
</body>
</html>
