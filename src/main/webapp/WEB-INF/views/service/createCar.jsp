<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>add car</title>
</head>
<body>
<h1>Enter the model and select the manufacturer from the list</h1>
<br>
<form method="post" action="${pageContext.request.contextPath}/car/add">
    Model <input type="text" name="carModel"/><br>
    Manufacturer ID<input type="text" name="manufacturerId"/><br>
    <button type="submit">add car</button>
</form>
<form method="get" action="${pageContext.request.contextPath}/car/include/manufacturer">
    <button type="submit">Show Manufacturers</button>
</form>
<br>
</body>
</html>
