<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Manufactures</title>
</head>
<body>
<h2>Add a manufacturer</h2>
<p>Please input the form bellow and press the Submit button</p>
<form action="${pageContext.request.contextPath}/manufacturers/add" method="post">
    <label for="name">Full name:</label><br>
    <input type="text" id="name" name="name" required><br>
    <label for="country">Country:</label><br>
    <input type="text" id="country" name="country" required><br><br>
    <input type="submit" value="Submit">
</form>
</body>
</html>
