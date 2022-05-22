<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Car</title>
</head>
<body>
<h1>ADD CAR</h1>
<form name = "sign in" method = "post" action="${pageContext.request.contextPath}/cars/add">
    Model: <input type="text" name="model"> <br>
    Manufacturer id: <input type="number" name="manufacturer_id" min="1"> <br>
    <input type="submit" value="ADD">
</form>
<div>
    <button class="w3-btn w3-round-large" onclick="location.href='/index'">INDEX</button>
</div>
</body>
</html>
