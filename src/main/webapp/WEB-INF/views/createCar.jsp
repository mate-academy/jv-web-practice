<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Car</title>
</head>
<body>
<h1>Create Car</h1>

<form method="post" action="${pageContext.request.contextPath}/cars/create">
    Model <input type="text" name="model"><br>
    ManufacturerId <input type="text" name="manufacturerId"><br>
    <button type="submit">Create</button>
</form>
</body>
</html>