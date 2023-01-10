<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Creation of Car<</title>
</head>
<body>
<h1>Please fill the form below to add car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Model <input type="text" name="model" required><br>
    Manufacturer <input type="number" name="manufacturer_id" required><br>
    <button type="submit">Add</button>
</form>
</body>
</html>
