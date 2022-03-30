<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Create manufacturer</title>
</head>
<body>
<h1>Create new manufacturer:</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
    Name <input type="text" name="name"><br>
    Country <input type="text" name="country"><br>
    <button type="submit">Submit</button>
</form>
</body>
</html>
