<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create new Driver</title>
</head>
<body>
<h1>Create Driver form</h1>
    <form method="post" action="${pageContext.request.contextPath}/drivers/add">
        Name <input type="text" name="name"><br>
        License number <input type="text" name="license_number">
        <button type="submit">Create Driver</button>
    </form>
</body>
</html>
