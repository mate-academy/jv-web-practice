<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Creating cars</title>
</head>
<body>
<h1>Please fill out form bellow</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Name <label>
    <input type="text" name="model">
</label><br>
    Manufacturer ID <label>
    <input type="number" name="manufacturer_id">
</label><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
