<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add a new Driver</title>
</head>
<body>
<h2>Registration form for new Driver</h2>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    <label for="name">Driver name:</label><br>
    <input type="text" id="name" name="name"><br>
    <label for="license_number">License number:</label><br>
    <input type="text" id="license_number" name="license_number"><br><br>
    <input type="submit" value="REGISTER">
</form>
</body>
</html>
