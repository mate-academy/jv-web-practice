<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create driver</title>
</head>
<body>
<h1>Please fill in the form bellow</h1>

<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    Driver name <input type="text" name="driverName"><br>
    License Number <input type="text" name="licenseNumber"><br>
    <button type="submit">Confirm </button>
</form>
</body>
</html>
