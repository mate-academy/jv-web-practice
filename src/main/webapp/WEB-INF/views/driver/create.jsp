<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Driver</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/drivers/create">
    Name <input type="text" name="name" required><br>
    License <input type="text" name="license_number" required><br>
    <button type="submit">Submit</button>
</form>
</body>
</html>
