<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver</title>
</head>
<body>
    <form method="post" action="${pageContext.request.contextPath}/drivers/add">
    Driver name<input name="name" required><br>
    Driver license number<input name="licenseNumber" required><br>
    <button type="submit">Confirm</button>
    </form>
</body>
</html>
