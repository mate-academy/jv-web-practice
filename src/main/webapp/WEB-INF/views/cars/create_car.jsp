<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>create a new car</title>
</head>
<body>
<h1>Enter the car's info</h1>
<from method="post" action="${pageContext.request.contextPath}/cars/create">
    Model <input type="text" name="madel"><br>
    Manufacturer id<input type="number" name="manufacturer_id"><br>
    <button type="submit">Create a new car</button>
</from>
</body>
</html>
