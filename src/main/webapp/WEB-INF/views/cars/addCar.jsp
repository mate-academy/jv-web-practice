<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create car</title>
</head>
<body>
<h1>Create car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Model: <input type="text" name="model"><br>
    Manufacturer id: <input type="text" name="manufacturer_id"><br>
    <button type="submit">CREATE</button>
</form>
</body>
</html>
