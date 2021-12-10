<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<h1>Please fill the form below.</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    Car id<input type="number" name="Car's id"><br>
    Driver id<input type="number" name="Driver's id"><br>
    <button type="submit">Add driver to car</button>
</form>
</body>
</html>
