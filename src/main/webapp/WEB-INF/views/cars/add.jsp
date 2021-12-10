<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create new car</title>
</head>
<body>
<h1>Add new car here</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    <br>Cars model <input type="text" name="model"><br>
    <br>Manufacturer id <input type="number" name="manufacturerId"><br>
    <button type="submit">Create</button>
</form>
</body>
</html>
