<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create car</title>
</head>
<body>
<h1>Enter car form</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Name <input type="text" name="model"><br>
    Manufacturer id<input type="number" name="manufacturerId"><br>
    <button type="submit">Create</button>
</form>
</body>
</html>