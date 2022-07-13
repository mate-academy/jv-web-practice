<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Car</title>
</head>
<body>
<h1>To create a car, fill out the form below</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    Name of the manufacturer <input type="text" name="manufacturerName"><br>
    Country of manufacture <input type="text" name="manufactureCountry"><br>
    Model <input type="text" name="model"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
