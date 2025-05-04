<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Driver</title>
</head>
<body>
<h1>Add driver</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    <label>
        <input type="text", placeholder="Name", name="name">
    </label>
    <label>
        <input type="text", placeholder="License number", name="license_number">
    </label>
    <button type="submit">Create</button>
</form>
</body>
</html>
