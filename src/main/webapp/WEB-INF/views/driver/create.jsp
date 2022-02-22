<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create new driver</title>
</head>
<body>
<h1>Create:</h1>
<form method="post" action="${pageContext.request.contextPath}/driver/create">
    Name <input type="text" name="name"><br>
    License Number <input type="text" name="number"><br>
    <button type="submit">Submit</button>
</form>
</body>
</html>
