<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add new car</title>
</head>
<body>
<h1>Enter car</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
    Manufacturer  country<input type="text" name="name" required><br>
    Manufacturer name <input type="text" name="country" required><br>
    <button type="submit">Add</button>
</form>
</body>
</html>