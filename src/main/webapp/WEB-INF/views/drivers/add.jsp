<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Creating a driver</title>
</head>
<body>
<h1>Please fill out the form below</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    Name <input type="text" name="name">
    License number <input type="text" name="license_number">
    <button type="submit">Create</button>
</form>
</body>
</html>
