<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create a new car</title>
</head>
<body>
<h1>Enter the information about new car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Model <input type="text" name="model" required><br>
    Manufacturer's ID = <input type="number" name="manufacturer_id" required><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
