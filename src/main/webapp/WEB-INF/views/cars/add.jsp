<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Add car</title>
</head>
<body>
<h1>car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Car Model <br><input type="text" name="model"><br>
    Manufacturer Id <br><input type="text" name="manufacturer_id"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
