<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create a car</title>
</head>
<body>
<h1>Please fill up the form bellow</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Model <input type="text" name="model"><br>
    Manufacturer's ID <input type="text" name="manufacturerId"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
