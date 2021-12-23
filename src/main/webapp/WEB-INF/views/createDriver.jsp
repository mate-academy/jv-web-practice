<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Create driver</title>
</head>
<body>
<h1>Enter driver statements below:</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/create">
    <label>
        Name
        <input type="text" name="name">
    </label><br>
    License Number<label>
    <input type="text" name = "license_number">
</label><br>
    <button type="submit">Create</button>
</form>
</body>
</html>
