<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Add new car</title>
</head>
<body>
<h2>Add new car</h2>
<form method="post" action="${pageContext.request.contextPath}/cars/create">
    Model <input type="text" name="model"><br>
    Manufacturer ID <input type="text" name="manufacturer_id"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
