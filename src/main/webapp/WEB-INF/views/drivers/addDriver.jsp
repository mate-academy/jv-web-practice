<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Adding a driver</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>
<body>
<a href="${pageContext.request.contextPath}/">Go to Action menu</a>
<h2>To add a driver, please fill out the form below</h2>
<form action="${pageContext.request.contextPath}/drivers/add" method="post">
    <label>
        Driver name:
        <input type="text" name="name" required>
    </label><br><br>
    <label>
        License number:
        <input type="text" name="license_number" required>
    </label><br><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>