<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create car</title>
</head>
<body>
<h1>Enter data</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    <label>Model</label> <input type="text" name="model"><br>
    <label>Maker id</label> <input type="text" name="manufacturer_id"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
