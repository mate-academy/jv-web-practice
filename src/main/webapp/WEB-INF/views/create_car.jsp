<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>creating car</title>
</head>
<body>
<h1>Please fill form</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Name <input type="text" name="model"><br>
    Manufacturer id <input type="text"  name="id"> <br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
