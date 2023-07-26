<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Creating Driver</title>
</head>
<body>
<h1>Please enter data of new driver</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/create">
    name <label>
    <input type="text" name="name">
</label><br>
    licenseNumber <label>
    <input type="text" name="licenseNumber">
</label><br>
    <button type="submit">Create</button>
</form>
</body>
</html>
