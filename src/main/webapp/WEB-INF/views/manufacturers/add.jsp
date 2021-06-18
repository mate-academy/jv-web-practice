<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Add manufacturer</title>
</head>
<body>
<a href="${pageContext.request.contextPath}/index">Home</a>
<h2>Add manufacturer to DB:</h2>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
    <label for="name">Name: </label><br>
    <input type="text" id="name" name="name" required><br><br>
    <label for="country">Country: </label><br>
    <input type="text" id="country" name="country" required><br><br>
    <button type="submit">Add</button>
</form>
</body>
</html>
