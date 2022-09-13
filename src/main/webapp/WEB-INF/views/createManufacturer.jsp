<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create a new Manufacturer</title>
</head>
<body>
<h1>Please, fill the form below to create new manufacturer:</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
    Name <input type="text" name="manufacturerName" required><br>
    Country <input type="text" name="manufacturerCountry" required><br>
    <button type="submit">Create manufacturer</button>
</form>
</body>
</html>
