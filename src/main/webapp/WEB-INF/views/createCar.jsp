<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add a new car</title>
</head>
<body>
<h1>Create car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/create">
    Model <input type="text" name = "model"><br>
    Manufacturer ID <input type="number" name = "manufacturer_id"><br>
    <button type="submit">Add car</button>
</form>
<br/>
</body>
</html>
