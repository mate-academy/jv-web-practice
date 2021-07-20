<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create car page</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/car/create">
    Car's model: <input type="text" name="model"><br>
    Car's manufacturer id: <input type="text" name="manufacturerId"><br>
    <button type="submit">Create new car</button>
</form>
</body>
</html>
