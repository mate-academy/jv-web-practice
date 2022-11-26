<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create driver</title>
</head>
<body>
<h1>Enter drivers name and license id</h1>
<h1> Create Driver</h1>
<form method="post" name="${pageContext.request.contextPath}/driver/add">
    Name <input type="text" name="name">
    Licesne id <input type="text" name="license_id">
    <button type="submit">Save</button>
</form>
</body>
</html>
