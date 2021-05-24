<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Driver</title>
</head>
<body>
    <h1>Please fill in the form</h1>
    <form method="post" action="${pageContext.request.contextPath}/drivers/create">
        Driver name <input type="text" name="driver_name" required><br>
        License number<input type="text" name="license_number" required><br>
        <button type="submit">Confirm</button>
    </form>
    <a href="${pageContext.request.contextPath}/drivers">See all drivers</a>
    <a href="${pageContext.request.contextPath}/">To main page</a>
</body>
</html>
