<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add new manufacturer</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
    <label>
        Name <input type="text" name="name" required>
    </label><br>
    <label>
        Country <input type="text" name="country" required>
    </label>
    <button type="submit">Add</button>
</form>
<a href="${pageContext.request.contextPath}/index">Back</a>
</body>
</html>
