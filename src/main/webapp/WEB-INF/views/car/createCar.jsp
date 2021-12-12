<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add car</title>
</head>
<body>
<h1>Please, create car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Model <input type="text" name = "model"><br>
    Manufacturer <input type="number" name = "manufacturer_id"><br>
    <button type="submit">Submit</button>
</form>
</body>
</html>
