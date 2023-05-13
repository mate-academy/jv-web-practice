<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create driver</title>
</head>
<body>
<h1>Create a new driver:</h1>

<form method="post" action="${pageContext.request.contextPath}/drivers/create">
    Driver name <input type="text" name="name" required>
    License number <input type="text" name="license_number" required><br>
    <button type="submit">Confirm</button>
</form>
<a href="${contentType.request.contextPath}/index">Back to menu</a>
</body>
</html>
