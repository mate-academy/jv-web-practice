<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create driver</title>
</head>
<body>
<h1>Please the form below</h1>

<form method="post" action="${pageContext.request.contextPath}/drivers/create">
    Name <input type="text" name="name" required><br>
    Licence number <input type="text" name="licence_number" required><br>
    <button type="submit">Create</button>
</form>
</body>
<footer>
    <a href="${pageContext.request.contextPath}/drivers">To drivers</a>
</footer>
</html>
