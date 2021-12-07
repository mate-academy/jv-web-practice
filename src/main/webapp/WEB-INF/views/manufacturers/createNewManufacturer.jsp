<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create manufacturer</title>
</head>
<body>
<h1>Create new manufacturer</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/create">
    <label for="name">Manufacturer name:</label><br>
    <input type="text" id="name" name="name"><br>
    <label for="country">Country:</label><br>
    <input type="text" id="country" name="country"><br>
    <button type="submit">Submit</button>
    <button type="reset">Reset</button>
</form>
<br><a href="${pageContext.request.contextPath}/index">Back to index page</a>
</body>
</html>
