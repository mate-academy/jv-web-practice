<html>
<head>
    <title>Add manufacturer</title>
</head>
<body>
<h1>To add manufacturer fill the form</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturer/add">
    Name<input type="text" name="name"><br>
    Country<input type="text" name="country"><br>
    <button type="submit">Add manufacturer</button>
</form>
</body>
</html>
