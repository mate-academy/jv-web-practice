<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver</title>
</head>
<body>
<h1>Please fill in the driver info:</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    Name <input type="text" name="name" required><br>
    License number <input type="text" name="license_number" required><br>
    <button type="submit">Submit</button>
</form>
</body>
</html>
