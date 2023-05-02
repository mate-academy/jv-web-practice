<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>manufacturer</title>
</head>
<body>
<h1>Manufacturer registration</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
    Name <input type="text" name="name"><br>
    Country <input type="text" name="country"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
