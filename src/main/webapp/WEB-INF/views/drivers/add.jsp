<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver</title>
</head>
<body>
<h1>To add a driver fill the form below</h1>

<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    Name <input type="text" required name="name"><br>
    License number <input type="number" required name="license"><br>
    <button type="submit">Add</button>
</form>
</body>
</html>
