<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add new car</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Car model  <input type="text" name="model"><br>
    Manufacturer id  <input type="number" name="manufacturer_id"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
