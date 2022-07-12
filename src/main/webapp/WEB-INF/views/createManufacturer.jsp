<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Adding a new manufacturer</title>
</head>
<body>
<h1>Please fill the form below</h1>
<h3>Requisites of a new manufacturer:</h3>

<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
    Name <input type="text" name="name"><br>
    Country <input type="text" name="country"><br>
    <button type="submit">Add</button>
</form>
</body>
</html>
