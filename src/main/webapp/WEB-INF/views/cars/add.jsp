<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Car</title>
</head>
<body>
<h1>To create a car, fill in the form below</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Manufacturer id <input type="text" name="manufacturer_id"><br>
    Model <input type="text" name="model"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
