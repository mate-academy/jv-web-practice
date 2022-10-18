<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add new driver</title>
</head>
<body>
    <h1>Enter driver</h1>
    <form method="post" action="${pageContext.request.contextPath}/drivers/add">
        Name <input type="text" name="name" required><br>
        License Number <input type="text" name="license_number" required><br>
        <button type="submit">Add</button>
    </form>
</body>
</html>
