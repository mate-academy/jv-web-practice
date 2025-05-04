<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add a new Manufacturer</title>
</head>
<body>
<h2>Registration form for new Manufacturer</h2>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
    <label for="name">Name:</label><br>
    <input type="text" id="name" name="name"><br>
    <label for="country">Country:</label><br>
    <input type="text" id="country" name="country"><br><br>
    <input type="submit" value="REGISTER">
</form>
</body>
</html>
