<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Car registration</title>
</head>
<body>
<h1>Please fill the fields:</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Car model <input type="text" name="model"><br>
    Car manufacturer id <input type="text" name="manufacturer_id"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
