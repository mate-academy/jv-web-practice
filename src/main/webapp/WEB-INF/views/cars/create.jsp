<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Create car</title>
</head>
<body>
<h1>Enter car's info</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/create">
    Model <input type="text" name="model" required><br>
    Manufacturer id<input type="number" name="manufacturer_id" required><br>
    <button type="submit">Create car</button>
</form>
</body>
</html>
