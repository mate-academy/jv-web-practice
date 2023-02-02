<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Taxi Service</title>
</head>
<body>
<h3>Create a new manufacturer:</h3>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
    <label for="name">Name:</label><br>
    <input type="text" id="name" name="name" required><br>
    <label for="country">Country:</label><br>
    <input type="text" id="country" name="country" required><br>
    <br>
    <button type="submit">Confirm</button>
</form>
<p><a href="${pageContext.request.contextPath}/index">Back to main page</a></p>
</body>
</html>
