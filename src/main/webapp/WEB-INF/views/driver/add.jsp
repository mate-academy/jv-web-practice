<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Driver</title>
</head>
<body>
<h1>Fill the form below</h1>

<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    Name <input type="text" name="name" required><br>
    License number <input type="text" name="licenseNumber"><br>
    <button type="submit">Add</button>
</form>
</body>
</html>
