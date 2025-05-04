<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create car</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Model car<input type="text" name="model_car" required><br>
    Manufacturer id<input type="text" name="manufacturer_id" required><br>
    <button type="submit">Create</button>
</form>
</body>
</html>
