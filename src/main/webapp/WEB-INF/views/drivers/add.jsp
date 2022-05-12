<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Create driver</title>
</head>
<body><h2>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    <label>Name</label><br>
    <label>
        <input type="text" name="name">
    </label><br>
    <label>License number</label><br>
    <label>
        <input type="text" name="license_number">
    </label><br>
    <button type="submit">Create Driver</button>
</form>
</h2>
</body>
</html>
