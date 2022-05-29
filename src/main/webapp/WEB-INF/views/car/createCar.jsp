<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create car</title>
</head>
<body>
<h1>Fill in all the fields</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/create">
    <label for="model">Model</label><br>
    <input type="text" id="model" name="model"><br>
    <label for="manufacturer_id">Manufacturer id</label><br>
    <input type="text" id="manufacturer_id" name="manufacturer_id"><br><br>
    <input type="submit" value="Submit">
    <input type="reset" value="Reset">
</form>
</body>
</html>
