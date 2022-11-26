<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create driver</title>
</head>
<body>
<h1>Create driver</h1>
<h4 style="color: green">${message}</h4>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    <label>
        <input type="text" name="driver_name" placeholder="Driver name">
        <input type="text" name="license_number" placeholder="License number">
    </label>
    <button type="submit">Create</button>
</form>
</body>
</html>
