<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Create new car</title>
</head>
<body>
<h1>Please, input relevant information</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/create">
    Model <input type="text" name="model"><br>
    Manufacturer ID <input type="number" name="manufacturer_id"><br>
    <button type="Submit">Confirm</button>
</form>
</body>
</html>
