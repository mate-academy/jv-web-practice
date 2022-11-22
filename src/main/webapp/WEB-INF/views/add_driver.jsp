<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create new car</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    <label>
        Name <input type="text" name="name" required>
    </label><br>
    <label>
        License number <input type="text" name="license_number" required>
    </label><br>
    <button type="submit">Add</button>
</form>
<a href="${pageContext.request.contextPath}/index">Back</a>
</body>
</html>
