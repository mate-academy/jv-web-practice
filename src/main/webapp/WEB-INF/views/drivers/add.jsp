<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Create driver</title>
</head>
<body>
<h1>Enter driver's info</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/create">
    Name <input type="text" name="name" required="required"><br>
    License Number <input type="text" name="license_number" required="required"><br>
    <button type="submit">Add</button>
</form>
</body>
</html>
