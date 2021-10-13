<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>create car</title>
</head>
<body>
<h2>Create car with no drivers by default</h2>
<form method="post" action="${pageContext.request.contextPath}/cars/create">
    Car model: <input type="text" name="model">
    Car manufacturer id: <input type="number" name="manufacturerId">
    <button type="submit">Confirm</button>
</form>
</body>
</html>
