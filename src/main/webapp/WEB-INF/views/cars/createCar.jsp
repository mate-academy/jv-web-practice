<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Car creating</title>
</head>
<body>
<h1>Creating a car:</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/create">
    Model <input type="text" name="model"><br>
    Manufacturer ID <input type="number" name="manufacturerId"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>