<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Car adding</title>
</head>
<body>
<h1>Please the form for adding below</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Model <input type="text" name ="model"><br>
    Manufacturer <input type="text" name ="manufacturerId"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
