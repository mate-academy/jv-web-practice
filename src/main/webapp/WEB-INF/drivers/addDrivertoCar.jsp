<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Driver to Car</title>
</head>
<body>
<h1>Add Driver to Car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add"></form>
    Name <input type="text" name="name"></br>
    License Number <input type="text" name="license_number"><br>
    <button type="submit">Create</button>
</body>
</html>
