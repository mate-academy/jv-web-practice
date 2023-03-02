<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add car</title>
</head>
<body>
<h1>Please fill out the form below to add a car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Model           <input type="text" name="model" required="required"><br>
    Manufacturer ID <input type="number" name="manufacturer_id" required="required"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>