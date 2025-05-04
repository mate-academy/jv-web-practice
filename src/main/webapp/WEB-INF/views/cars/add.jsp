<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create a new car</title>
</head>
<body>
<h1>Please, enter car details</h1>

<form method="post" id="car" action="${pageContext.request.contextPath}/cars/add">
    Manufacturer id <input type="number" name="manufacturer_id" required><br>
    Car model <input type="text" name="model" required><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
