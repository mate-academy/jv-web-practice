<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create manufacturer</title>
</head>
<body>
<h3>Please fill the form below</h3>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/create">
    Name <input type="text" name="name"> <br>
    Country <input type="text" name="country"> <br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
