<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Driver</title>
</head>
<body>
    <h1>Add Driver</h1>
    <form method="post" action="${pageContext.request.contextPath}/drivers/add">
        Name <input type="text" name="name"><br>
        License Number <input type="text" name="license_number"><br>
        <button type="submit">Add</button>
    </form>
</body>
</html>
