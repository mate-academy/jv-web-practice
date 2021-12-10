<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add new driver</title>
</head>
<body>
<h1>Add new driver here</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    <br>Name <input type="text" name="name"><br>
    <br>License Number <input type="text" name="licenseNumber"><br>
    <button type="submit">Create</button>
</form>
</body>
</html>
