<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create manufacturer</title>
</head>
<body>
<h1>Add new manufacturer here</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
    <br>Manufacturer name <input type="text" name="name"><br>
    <br>Manufacturer country <input type="text" name="manufacturerCountry"><br>
    <button type="submit">Create</button>
</form>
</body>
</html>
