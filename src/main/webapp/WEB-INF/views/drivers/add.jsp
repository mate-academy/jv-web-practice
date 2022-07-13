<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create driver</title>
</head>
<body>
<h1>Enter driver`s info</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    <label>Name</label><br>
    <label>
        <input type="text" name="name">
    </label><br>
    <label>License Number</label><br>
    <label>
    <input type="text" name="license_number">
    </label><br>
    <button type="submit">Confirm</button>
</body>
</html>
