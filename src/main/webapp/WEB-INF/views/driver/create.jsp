<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver</title>
</head>
<body>
<h1>Please fill out the form below to add a driver</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    Name           <input type="text" name="name" required="required"><br>
    License Number <input type="number" name="licenseNumber" required="required"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>