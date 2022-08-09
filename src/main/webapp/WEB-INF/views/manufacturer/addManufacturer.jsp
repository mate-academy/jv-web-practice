<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>New manufacturer registration</title>
</head>
<body>
<h1>Please enter a new manufacturer data below:</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/new">
    Manufacturer name <input type="text" name="name"><br>
    Manufacturer's country <input type="text" name="country"><br>
    <button type="submit">Save data</button>
</form>
</body>
</html>
