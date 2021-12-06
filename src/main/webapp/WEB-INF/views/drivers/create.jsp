<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Create driver</title>
</head>
<body>
<h1>Enter driver's info</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/create">
    Name <input type="text" name="name" required><br>
    License Number <input type="text" name="license_number" required><br>
    <button type="submit">Create driver</button>
</form>
</body>
</html>
