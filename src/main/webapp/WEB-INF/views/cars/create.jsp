
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>create car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    model <input type="text" name="model"><br>
    manufacturer id <input type="number" name="manufacturer_id"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
