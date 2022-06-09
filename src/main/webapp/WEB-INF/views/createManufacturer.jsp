<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Creating a manufacturer</title>
</head>
<body>
<h2>Set parameters to create a manufacturer:</h2>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/create">
    Name <input type="text" name="manufacturer_name"><br>
    Country <input type="text" name="manufacturer_country"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
