<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create new car</title>
</head>
<body>
<h1>Create new Car</h1>

<form method="post" action="${pageContext.request.contextPath}/cars/new">
    Model <label>
    <input type="text" name="model">
</label><br>
    Manufacturer ID <label>
    <input type="number" name="manufacturer">
</label><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
