<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create a manufacturer</title>
</head>
<body>
<h3>Fill the form to create a new manufacturer.</h3>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
    Manufacturer's name <input type="text" name="name"><br/><br>
    Manufacturer's country <input type="text" name="country"><br/><br/>
    <button type="submit">Create manufacturer</button>
</form>
</body>
</html>
