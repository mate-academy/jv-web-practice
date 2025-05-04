<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>add driver page</title>
</head>
<body>
<h1>Create Driver</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    Name <input type="text" name="name"><br>
    License number <input type="text" name="license_number"><br>
    <button type="submit">Create</button>
</form>
<br/>
<a href="${pageContext.request.contextPath}/main">Back to main page</a>
</body>
</html>
