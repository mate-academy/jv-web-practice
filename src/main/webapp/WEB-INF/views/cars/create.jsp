
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create car</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/cars/create">
    Model<input type="text" name="model" required><br>
    Manufacturer id<input type="number" name="manufacturer_id" required><br>
    <button type="submit">Create</button>
</form>
</body>
</html>
