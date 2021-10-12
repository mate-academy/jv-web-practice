<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Create car</title>
</head>
<body>
<h1>Enter car's info</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/create">
    Model <input type="text" name="model" required="required"><br>
    Manufacturer id<input type="number" required="required"><br>
    <button type="submit">Add</button>
</form>
</body>
</html>
