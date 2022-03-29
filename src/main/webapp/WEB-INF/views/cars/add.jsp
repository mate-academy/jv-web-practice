<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create car</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Model <input type="text" name="model"><br>
    Manufacturer ID <input type="number" name="manufacturer_id">
    <button type="submit">Confirm</button>
</form>
</body>
</html>
