<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create driver</title>
</head>
<body>
    <h1>Please fill the form below.</h1>
    <form method="post" action="${pageContext.request.contextPath}/drivers/add">
        Name<input type="text" name="Driver's name"><br>
        License number<input type="text" name="Driver's license number"><br>
        <button type="submit">Create driver</button>
    </form>
</body>
</html>
