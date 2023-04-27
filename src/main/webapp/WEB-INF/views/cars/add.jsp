<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>CreateCar</title>
</head>
<body>
<h1>Create new car</h1>

<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Model<input type="text" name="model"><br>
    Manufacture id<input type="text" name="id"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
