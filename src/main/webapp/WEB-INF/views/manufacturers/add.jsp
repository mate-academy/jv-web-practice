<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Manufacturer creation</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/create">
    Name <input type="text" name="name" required><br>
    Country <input type="text" name="country" required><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
