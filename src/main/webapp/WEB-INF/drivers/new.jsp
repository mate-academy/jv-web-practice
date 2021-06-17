<%@page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create driver</title>
</head>
<body>
<h1>Create driver</h1>

<form method="post" action="${pageContext.request.contextPath}/drivers/new">
    Name <label>
    <input type="text" name="name">
</label><br>
    License number <label>
    <input type="text" name="license_number">
</label><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
