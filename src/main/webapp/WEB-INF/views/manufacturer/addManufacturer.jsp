<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Manufacturer creation</title>
</head>
<body>
<h1>Create a manufacturer</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
    Name: <input required type="text" name="name"><br>
    Country: <input required type="text" name="country"><br>
    <button type="submit">Create</button>
</form>
</body>
</html>
