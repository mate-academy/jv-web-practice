<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Add manufacture</title>
</head>
<body>
<h1>Fill the form below</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturer/add">
    <label for="name">Manufacturer name:</label><br>
    <input type="text" id="name" name="name"><br>
    <label for="country">Country:</label><br>
    <input type="text" id="country" name="country">
    <input type="submit" value="Add manufacturer">
</form>
</body>
</html>