<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>Create car</head>
<body>
<h1>Enter car information</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/create">
    Model <input type="text" name="model"><br>
    Manufacturer id<input type="number" name="manufacturer_id"><br>
    <button type="submit">Create new car</button>
</form>
</body>
</html>
