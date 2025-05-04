<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create car</title>
</head>
<body>
<h1>Create car :</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    model : <input type="text" name="model"><br>
    Manufacturer id : <input type="number" name="manufacturer_id"><br>
    <button type="submit">Confirm</button>
</form>
<form method="get" action="${pageContext.request.contextPath}/driver/add">
    <button type="submit">add driver to car</button>
</form>
</body>
</html>
