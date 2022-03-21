<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create manufacturer</title>
</head>
<body>
<h1>Create new manufacturer:</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/create">
    Name:<input type="text" name="manufacturerName"><br>
    Country:<input type="text" name="country"><br>
    <button type="submit">Create</button>
</form>
<p><a href="${pageContext.request.contextPath}/index">Back to menu</a></p>
</body>
</html>
