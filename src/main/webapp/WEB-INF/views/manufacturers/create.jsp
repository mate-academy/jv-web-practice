<html>
<head>
    <title>Create manufacturer</title>
</head>
<body>
<h1>Creating a new manufacturer</h1>
<p>Fill out the form below</p>

<form method="post" action="${pageContext.request.contextPath}/manufacturers/create">
    Name <input type="text" name="name"><br>
    Country <input type="text" name="country"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
