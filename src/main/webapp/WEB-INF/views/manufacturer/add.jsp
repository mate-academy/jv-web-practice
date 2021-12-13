<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add manufacturer</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
    Name <input type="text" name="Name"><br>
    Country <input type="text" name="country"><br>
    <button type="submit">Submit</button>
</form>
</body>
</html>
