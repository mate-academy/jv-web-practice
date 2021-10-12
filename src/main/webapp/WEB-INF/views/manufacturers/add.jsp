<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Manufacturer creation</title>
</head>
<body>
<h1>Please, fill the form below</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
    Manufacturer's name <br><input type="text" name="name" required><br>
    Country <br><input type="text" name="country" required><br><br>
    <button type="submit" onclick="alert('If you will have an exclamation message '
    + 'manufacturer won\'t be added')">Add manufacturer</button>
    <button type="reset">Cancel</button>
</form>
<a href="${pageContext.request.contextPath}/cars/add">To add car</a><br>
<a href="${pageContext.request.contextPath}/">Back to main</a>
</body>
</html>
