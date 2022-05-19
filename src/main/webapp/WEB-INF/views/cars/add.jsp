<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
    <title>Create car</title>
</head>
<body>
<h1>Car parameters:</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Model <input type="text" name="model"><br>
    Manufacturer ID <input type="number" name="manufacturer_id"><br>
    <button type="submit">Create</button>
</form>
</body>
</html>
