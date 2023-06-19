<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>creating new driver</title>
</head>
<body>
<h1>Enter driver data</h1>
<form method="post" action="${pageContext.request.contextPath}/
">
    Name <label>
    <input type="text" name="name">
</label>
    <br>

    License Number <label>
    <input type="text" name="licence_number">
</label>
    <br>

    <button type="submit">Confirm</button>
</form>
</body>
</html>
