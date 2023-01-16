<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create manufacturer</title>
</head>
<body>
<h1>Fill in all the fields</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/create">
    <label for="name">Name</label><br>
    <input type="text" id="name" name="name"><br>
    <label for="country">Country</label><br>
    <input type="text" id="country" name="country"><br><br>
    <input type="submit" value="Submit">
    <input type="reset" value="Reset">
</form>
</body>
</html>
