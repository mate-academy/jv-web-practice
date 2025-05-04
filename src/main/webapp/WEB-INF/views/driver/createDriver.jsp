<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create driver</title>
</head>
<body>
<h1>Fill out this form</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    Name <input type="text" name="driverName"><br>
    Driver license <input type="text" name="driverLicense"><br>
<button type="submit">Add driver</button>
</form>
</body>
</html>
