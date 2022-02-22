<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create new car</title>
</head>
<body>
<h1>Create:</h1>
<form method="post" action="${pageContext.request.contextPath}/car/create">
    Model <input type="text" name="name"><br>
    Manufacturer id <input type="number" name="man_id"><br>
    <button type="submit">Submit</button>
</form>
</body>
</html>
