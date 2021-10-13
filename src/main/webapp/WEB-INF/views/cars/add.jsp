<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Add car</title>
</head>
<body>
<h1>Enter car's info</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Car's model <br><input type="text" name="model" required><br>
    Manufacturer's id <br><input type="number" name="manufacturer_id" min="1" required><br><br>
    <button type="submit">Add car</button>
    <button type="reset">Cancel</button>
</form>
<form action="${pageContext.request.contextPath}/index" target="_blank">
    <button>Back to main</button>
</form>
</body>
</html>