<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Car registration</title>
</head>
<body>
<h1>Please fill the form below</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/registrate">
    Model <input type="text" name="model"><br>
    Manufacturer id <input type="number" name="manufacturerId"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
