<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add car</title>
</head>
<body>
<h1>Please fill in the car info:</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Model <input type="text" name="model" required><br>
    Manufacturer Id <input type="number" name="manufacturer_id" required><br>
    <button type="submit">Submit</button>
</form>
</body>
</html>
