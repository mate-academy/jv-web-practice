<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register car</title>
</head>
<body>
<h1>Please fill the form below</h1>

<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Model <input type="text" name="model" required><br>
    Manufacturer <input type="text" name="manufacturer_id" required><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
