<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create a manufacturer</title>
</head>
<body>
<h3>Fill the form to create a new manufacturer.</h3>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/create">
    Name <input type="text" name="manufacturer-name"><br/><br>
    Country <input type="text" name="manufacturer-country"><br/><br/>
    <button type="submit">Create manufacturer</button>
</form>
</body>
</html>
