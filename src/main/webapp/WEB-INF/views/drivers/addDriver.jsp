<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver</title>
</head>
<body>
<h1>Please, complete the form </h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    Name driver <input type="text" name="name" required><br>
    License Number<input type="text" name="license_number" required><br>
    <button type="submit">Add driver</button>
</form>
</body>
</html>
