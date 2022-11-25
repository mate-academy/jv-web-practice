<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Car</title>
</head>
<body>
<h1>Fill the form below</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Name <input type="text" name="model"><br>
    Manufacturer id <input type="number" name="manufacturer_id"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
