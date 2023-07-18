<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Car creation</title>
</head>
<body>
<h1>Please fill full the form below.</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Model <input type="text" name="model" required><br>
    Manufacturer ID<input type="number" name="manufacturerId" required><br>
    <button type="submit">Create</button>
</form>
</body>
</html>
