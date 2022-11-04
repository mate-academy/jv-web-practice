<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create driver</title>
</head>
<body>
    <h1>Create new driver</h1>
    <form method="post" action="${pageContext.request.contextPath}/drivers/add">
        <label>Name</label><br>
        <input type="text" name="name"><br>
        <label>License number</label><br>
        <input type="text" name="license_number"><br>
        <button type="submit">Create driver</button>
    </form>
</body>
</html>
