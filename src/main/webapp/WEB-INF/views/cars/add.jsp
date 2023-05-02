<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>vehicle</title>
</head>
<body>
<h1>Vehicle registration</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Model <input type="text" name="model"><br>
    ManufacturerId <input type="text" name="manufacturerId"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
