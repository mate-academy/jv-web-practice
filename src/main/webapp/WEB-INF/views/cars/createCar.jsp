<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create car</title>
</head>
<body>
<h1>Please fill the form below.</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Model<input type="text" name="Car's model"><br>
    Manufacturer id<input type="number" name="Manufacturer's id"><br>
    <button type="submit">Create car</button>
</form>
</body>
</html>
