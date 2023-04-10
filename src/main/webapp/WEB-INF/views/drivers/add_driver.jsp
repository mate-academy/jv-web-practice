<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver</title>
</head>
<body>
<h1>Please fill the form:</h1>

<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    Name <input type="text" required name="name"><br>
    License Number <input type="text" name="licenseNumber"><br>
    <button type="submit">Save</button>
</form>
<br>
<a href="${pageContext.request.contextPath}/">Back to main</a>
</body>
</html>
