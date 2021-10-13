<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create car</title>
</head>
<body>
<h1> Create car:</h1>

<form method="post" action="${pageContext.request.contextPath}/cars/create">
    Model <input type="text" name="carModel"><br>
    ManufacturerId <input type="text" name="manufacturerId"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
