<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create a car</title>
</head>
<body>
<h1>Add a new car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    MODEL<input type="text" name="model"><br>
    MANUFACTURER ID<input type="number" name="manufacturer_id"><br>
    <button type="submit">SUBMIT</button>
</form>
</body>
</html>
