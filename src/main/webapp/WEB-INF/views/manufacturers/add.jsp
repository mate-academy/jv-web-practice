<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Manufacturer Registration</title>
</head>
<body>
<h1>Manufacturer Registration</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
    Manufacturer's name <input type="text" name="manufacturer_name"><br>
    Manufacturer's country <input type="text" name="manufacturer_country"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
